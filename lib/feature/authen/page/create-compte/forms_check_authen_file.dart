import 'dart:developer';
import 'dart:io';
import 'package:com.example.epbomi/core/custome_widget/custome_text.dart';
import 'package:com.example.epbomi/core/injection/injection_container.dart';
import 'package:com.example.epbomi/core/navigator_widget/custome_app_bar.dart';
import 'package:com.example.epbomi/core/navigator_widget/navigator_widget.dart';
import 'package:com.example.epbomi/core/snakbar/custome_snackbar.dart';
import 'package:com.example.epbomi/feature/authen/domaine/usercase/create_compte_check_file.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/check_file/check_file_bloc.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/check_file/event/check_file_event.dart';
import 'package:com.example.epbomi/feature/authen/page/bloc/create_compte/state/create_compte_state.dart';
import 'package:com.example.epbomi/feature/authen/page/create-compte/forms_home_hebergement.dart';
import 'package:com.example.epbomi/gen/assets.gen.dart';
import 'package:com.example.epbomi/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import 'package:mnc_identifier_ocr/mnc_identifier_ocr.dart';
import 'package:mnc_identifier_ocr/model/ocr_result_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
// import 'package:gscankit/gscankit.dart';

class FormsCheckAuthenFile extends StatefulWidget {
  const FormsCheckAuthenFile({super.key});

  @override
  State<FormsCheckAuthenFile> createState() => _FormsCheckAuthenFileState();
}

class _FormsCheckAuthenFileState extends State<FormsCheckAuthenFile> {
  Future<void> scanKtp() async {
    try {
      OcrResultModel res = await MncIdentifierOcr.startCaptureKtp(
        withFlash: true,
        cameraOnly: true,
      );

      log('result: ${res.toJson()}');
      log('KTP image path: ${res.imagePath}');
      log('Face image path: ${res.faceImagePath}');
      // Access KTP data fields
      log('NIK: ${res.ktp?.nik}');
      log('Nama: ${res.ktp?.nama}');
      // ...and so on
    } catch (e) {
      log('something goes wrong $e');
    }
  }

  //  showAppSnackBar(
  //           context,
  //           color: MyColorName.errorRed,
  //           iconRight: Icons.close,
  //           message: state.errorMessage,
  //         );

  File? _imageFileRecto;
  File? _imageFileVerso;
  late String selectedOptions = "";
  TextEditingController controller = TextEditingController();

  Future<void> _imagePikers(
    ImageSource source,
    void Function(File) onImageSelected,
  ) async {
    try {
      final pickedImage = await ImagePicker().pickImage(
        source: source,
        maxWidth: 800.w, // pour réduire la taille si besoin
        maxHeight: 800.h,
        imageQuality: 80,
      );
      if (pickedImage == null) return;

      final selectedFile = File(pickedImage.path);

      setState(() {
        onImageSelected(selectedFile);
      });

      await _textReconginition(selectedFile);
    } catch (e) {
      log("Erreur lors de la sélection de l'image : $e");
    }
  }

  Future<void> _textReconginition(File img) async {
    final textRecoginition = TextRecognizer(
      script: TextRecognitionScript.latin,
    );
    final inputImage = InputImage.fromFilePath(img.path);
    final myText = await textRecoginition.processImage(inputImage);

    final rawText = myText.text.toUpperCase();

    // Vérifie si c'est une CNI ou un passeport
    final isCNI =
        rawText.contains("CI") &&
            rawText.contains("CIV") &&
            rawText.contains("IVOIRIENNE") ||
        rawText.contains("PASSPORT");

    if (isCNI) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.green,
            content: Text('Carte d’identité reconnue ✅'),
          ),
        );
    } else {
      // Remise à l’état initial
      setState(() {
        _imageFileRecto = null;
      });

      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.red,
            content: Text('Document non reconnu comme carte d’identité ❌'),
          ),
        );
      context.read<CheckFileBloc>().add(
        CheckFileEvent.changeGetRecto(''.toString()),
      );
    }
  }

  Future<void> _imagePikersVerso(
    ImageSource source,
    void Function(File) onImageSelected,
  ) async {
    try {
      final pickedImage = await ImagePicker().pickImage(
        source: source,
        maxWidth: 800.w, // pour réduire la taille si besoin
        maxHeight: 800.h,
        imageQuality: 80,
      );
      if (pickedImage == null) return;

      final selectedFile = File(pickedImage.path);

      setState(() {
        onImageSelected(selectedFile);
      });

      await _textReconginitionVerso(selectedFile);
    } catch (e) {
      log("Erreur lors de la sélection de l'image : $e");
    }
  }

  Future<void> _textReconginitionVerso(File img) async {
    final textRecoginition = TextRecognizer(
      script: TextRecognitionScript.latin,
    );
    final inputImage = InputImage.fromFilePath(img.path);
    final myText = await textRecoginition.processImage(inputImage);

    final rawText = myText.text.toUpperCase();

    // Vérifie si c'est une CNI ou un passeport
    final isCNI = rawText.contains("DC");

    if (isCNI) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.green,
            content: Text('Carte d’identité reconnue ✅'),
          ),
        );
    } else {
      // Remise à l’état initial
      setState(() {
        _imageFileVerso = null;
      });

      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.red,
            content: Text('Document non reconnu comme carte d’identité ❌'),
          ),
        );
      context.read<CheckFileBloc>().add(
        CheckFileEvent.changeGetVerso(''.toString()),
      );
    }
  }

  Future<void> _scanner(
    ImageSource source,
    void Function(File) onImageSelected,
  ) async {
    try {
      final pickedImage = await ImagePicker().pickImage(
        source: source,
        maxWidth: 800.w, // pour réduire la taille si besoin
        maxHeight: 800.h,
        imageQuality: 80,
      );
      if (pickedImage == null) return;

      final selectedFile = File(pickedImage.path);

      setState(() {
        onImageSelected(selectedFile);
      });

      await _textReconginitionss(selectedFile);
    } catch (e) {
      log("Erreur lors de la sélection de l'image : $e");
    }
  }

  Future<void> _textReconginitionss(File img) async {
    final textRecoginition = TextRecognizer(
      script: TextRecognitionScript.latin,
    );
    final inputImage = InputImage.fromFilePath(img.path);
    final myText = await textRecoginition.processImage(inputImage);

    final rawText = myText.text.toUpperCase();

    // Vérifie si c'est une CNI ou un passeport
    final isCNI =
        rawText.contains("CI") &&
            rawText.contains("CIV") &&
            rawText.contains("IVOIRIENNE") ||
        rawText.contains("PASSPORT");

    if (isCNI) {
     
      showAppSnackBar(
        context,
        color: MyColorName.successGreen,
        iconRight: Icons.check,
        message: "Document authentifié ✅",
      );
       
    } else {
      // Remise à l’état initial
      showAppSnackBar(
        context,
        color: MyColorName.errorRed,
        iconRight: Icons.close,
        message: "Document non authentifié ❌",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CheckFileBloc, CreateCompteCheckingFileState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          Future.delayed(Duration(seconds: 1)).then((value) {
            Navigator.push(
              context,
              fadeRoute(
                BlocProvider(
                  create: (context) => CheckFileBloc(
                    compteCheckFile: getIt<CreateCompteCheckFile>(),
                  ),
                  child: const FormsHomeHebergement(),
                ),
              ),
            );
          });
        } else if (state.status.isFailure) {
          showAppSnackBar(
            context,
            color: MyColorName.errorRed,
            iconRight: Icons.close,
            message: state.errorMessage,
          );
        }
      },
      child: Scaffold(
        backgroundColor: MyColorName.white,
        appBar: CustomAppBar(),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 12.h, horizontal: 12.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.center,
                  child: CustomeText(
                    texte: "Document d'atestation",
                    texteSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: MyColorName.textPrimaryDark,
                  ),
                ),

                SizedBox(height: 14.h),

                CustomeText(
                  texte:
                      "Veuillez ajouter les différentent facette de carte d'identité (CNI)",
                  texteSize: 13.sp,
                  fontWeight: FontWeight.w300,
                  color: MyColorName.textPrimaryDark,
                ),
                SizedBox(height: 17.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        BlocBuilder<
                          CheckFileBloc,
                          CreateCompteCheckingFileState
                        >(
                          builder: (context, state) {
                            return GestureDetector(
                              onTap: () async {
                                await _imagePikers(ImageSource.camera, (file) {
                                  _imageFileRecto = file;
                                  if (_imageFileRecto != null) {
                                    context.read<CheckFileBloc>().add(
                                      CheckFileEvent.changeGetRecto(
                                        file.toString(),
                                      ),
                                    );
                                  }
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                   vertical: 6.h,
                                  horizontal: 10.w,
                                ),
                                decoration: BoxDecoration(
                                  color: MyColorName.black.withValues(
                                    alpha: 0.05,
                                  ),
                                  borderRadius: BorderRadius.circular(3.r),
                                ),
                                child: Row(
                                  children: [
                                    CustomeText(
                                      texte: "Recto",
                                      texteSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                      color: MyColorName.textPrimaryDark,
                                    ),
                                    SizedBox(width: 5.w),
                                    Icon(Icons.camera_alt_outlined),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 7.h),
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(4),
                          child: _imageFileRecto != null
                              ? Image.file(
                                  _imageFileRecto!,
                                  fit: BoxFit.cover,
                                  height: 0.2.sh,
                                  width: 0.2.sh,
                                )
                              : SvgPicture.asset(
                                  MyAssets
                                      .icons
                                      .undrawTabsTlxz
                                      .path,
                                  fit: BoxFit.cover,
                                  height: 0.17.sh,
                                  width: 0.03.sh,
                                ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        BlocBuilder<
                          CheckFileBloc,
                          CreateCompteCheckingFileState
                        >(
                          builder: (context, state) {
                            return GestureDetector(
                              onTap: () async {
                                await _imagePikersVerso(ImageSource.camera, (
                                  file,
                                ) {
                                  _imageFileVerso = file;
                                  if (_imageFileVerso != null) {
                                    context.read<CheckFileBloc>().add(
                                      CheckFileEvent.changeGetVerso(
                                        file.toString(),
                                      ),
                                    );
                                  }
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 6.h,
                                  horizontal: 10.w,
                                ),
                                decoration: BoxDecoration(
                                  color: MyColorName.black.withValues(
                                    alpha: 0.05,
                                  ),
                                  borderRadius: BorderRadius.circular(3.r),
                                ),
                                child: Row(
                                  children: [
                                    CustomeText(
                                      texte: "Vecto ",
                                      texteSize: 15.sp,
                                      fontWeight: FontWeight.w400,
                                      color: MyColorName.textPrimaryDark,
                                    ),

                                    SizedBox(width: 5.w),
                                    Icon(Icons.camera_alt_outlined),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: 7.h),
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(4),
                          child: _imageFileVerso != null
                              ? Image.file(
                                  _imageFileVerso!,
                                  fit: BoxFit.cover,
                                  height: 0.2.sh,
                                  width: 0.2.sh,
                                )
                              : SvgPicture.asset(
                                  MyAssets
                                      .icons
                                      .undrawHiring8szx
                                      .path,
                                  fit: BoxFit.cover,
                                  height: 0.17.sh,
                                  width: 0.015.sh,
                                ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 0.1.sh),
                Align(
                  alignment: Alignment.center,
                  child: CustomeText(
                    texte: "Titre de propriété ",
                    texteSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: MyColorName.textPrimaryDark,
                  ),
                ),
                SizedBox(height: 5.h),
                CustomeText(
                  texte:
                      "Afin de vérifier votre titre de propriété nous vous prions de scaner votre document de proprité terrain.",
                  texteSize: 13.sp,
                  fontWeight: FontWeight.w300,
                  color: MyColorName.textPrimaryDark,
                ),
                SizedBox(height: 50.h),
                BlocBuilder<CheckFileBloc, CreateCompteCheckingFileState>(
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () async {
                        // context.read<CheckFileBloc>().add(
                        //   CheckFileEvent.submit(),
                        // );
                         context.read<CheckFileBloc>().add(CheckFileEvent.submit());
                      
                        // await _imagePikers(ImageSource.camera, (file) {
                        //   if (_imageFileRecto != null) {
                           
                        //   }
                        // });
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: CustomeText(
                                texte: "Document de propriété",
                                texteSize: 12.sp,
                                fontWeight: FontWeight.w300,
                                color: MyColorName.textPrimaryDark,
                              ),
                            ),
                            SizedBox(height: 15.h),
                            Icon(
                              Icons.document_scanner_outlined,
                              color: MyColorName.black.withValues(alpha: 0.5),
                              size: 50.h,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
