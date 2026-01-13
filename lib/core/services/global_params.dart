// import 'package:dartz/dartz.dart';
// import 'package:ma_box_orange/core/error/failure.dart';
// import 'package:ma_box_orange/core/usescases/usecase.dart';
// import 'package:ma_box_orange/features/communaute_fibre/domain/entities/models/parametre_global_response.dart';
// import 'package:ma_box_orange/features/communaute_fibre/domain/usecases/get_faq.dart';
// import 'package:ma_box_orange/injection_container.dart';

// class GlobalParams {
//   const GlobalParams._();

//   static const URL_NPERF_ANDROID = 'URL_NPERF_ANDROID';
//   static const ERROR_SERVEUR =
//       'Erreur serveur. Désolés ! Notre équipe travaille à la résolution. Réessayez plus tard. Contactez-nous si besoin';
//   static const URL_NPERF_IOS = 'URL_NPERF_IOS';
//   static const URL_NPERF_WEB = 'URL_NPERF_WEB';

//   static const URL_SPEED_TEST_ANDROID = 'URL_SPEED_TEST_ANDROID';
//   static const URL_SPEED_TEST_IOS = 'URL_SPEED_TEST_IOS';
//   static const URL_SPEED_TEST_WEB = 'URL_SPEED_TEST_WEB';

//   static const String domaineName = 'https://mabox.orange.ci/';

//   static const String baseUrlMinio =
//       'https://mabox.orange.ci/minio/minio-api/preview?bucket_name=iflex&file_path=';

//   static const String baseUrl =
//      'https://mabox.orange.ci/api-fibre/api-fibre-orange-v4';

//   // 'https://mabox.orange.ci/mbox-v4/api-fibre-orange-v4'; // 5 serveur
//   //'https://mabox.orange.ci/api/api-fibre-orange-v4-fut-0.1';
//   //'https://mabox.orange.ci/api/api-fibre-orange-v4';

//   // static const String baseUrl = 'http://192.168.3.205:8080'; https://mabox.orange.ci/api/api-fibre-orange-v4/?key=8ee15ef0c67dc83d874f412d84378d7f0eb50b63

//   static const String baseUrlUber =
//       // 'https://mabox.orange.ci/api/uberisation-diagnostic-api'; //uber-prod
//    'https://mabox.orange.ci/api-fibre/uberisation-diagnostic-api'; //uber-stagging
//   // 'https://mabox.orange.ci/mbox-v4/uberisation-diagnostic-api'; // uber-prod 5 serveur
//   // 'https://mabox.orange.ci/api/uberisation-diagnostic-api'; // uber-prod
//   // 'https://mabox.orange.ci/api-fibre/api-fibre-orange-v4';
//   // static const String baseUrl = 'http://192.168.3.205:8080'; https://mabox.orange.ci/api/api-fibre-orange-v4/?key=8ee15ef0c67dc83d874f412d84378d7f0eb50b63

//   static String urlNperfANDROID = '';
//   static String urlNperfIOS = '';
//   static String urlNperfWEB = '';

//   static String urlSpeedTestANDROID = '';
//   static String urlSpeedTestIOS = '';
//   static String urlSpeedTestWEB = '';

//   static const IS_ENCRYPT = 'IS_ENCRYPT';
//   static const IS_ENCRYPT_PROD = 'IS_ENCRYPT_PROD';
//   static String IS_ENCRYPT_PROD_VALUE = '';
//   static String IS_ENCRYPT_VALUE = ''; //IS_ENCRYPT_PROD

//   static const SECTION_COM_FIBRE_LEGEND = 'SECTION_COM_FIBRE_LEGEND';
//   static String SECTION_COM_FIBRE_LEGEND_VALUE = '';

//   static const SECTION_COM_FIBRE_STATUS_TRAITE =
//       'SECTION_COM_FIBRE_STATUS_TRAITE';
//   static String SECTION_COM_FIBRE_STATUS_TRAITE_VALUE = '';

//   static const FORM_ELIGIBILITE_DES = 'FORM_ELIGIBILITE_DES';
//   static String FORM_ELIGIBILITE_DES_VALUE = '';

//   static const FORM_ELIGIBILITE_TITRE = 'FORM_ELIGIBILITE_TITRE';
//   static String FORM_ELIGIBILITE_TITRE_VALUE = '';

//   static const FORM_ELIGIBILITE_HINTCOORDONNE =
//       'FORM_ELIGIBILITE_HINTCOORDONNE';
//   static String FORM_ELIGIBILITE_HINTCOORDONNE_VALUE = '';

//   static const FORM_RELOCATION_OLDADRESSE = 'FORM_RELOCATION_OLDADRESSE';
//   static String FORM_RELOCATION_OLDADRESSE_VALUE = '';

//   static const FORM_RELOCATION_NEWADRESSE = 'FORM_RELOCATION_NEWADRESSE';
//   static String FORM_RELOCATION_NEWADRESSE_VALUE = '';

//   static const FORM_RELOCATION_OLDADRESSE_HINTEXT =
//       'FORM_RELOCATION_OLDADRESSE_HINTEXT';
//   static String FORM_RELOCATION_OLDADRESSE_HINTEXT_VALUE = '';

//   static const FORM_RELOCATION_NEWADRESSE_HINTEXT =
//       'FORM_RELOCATION_NEWADRESSE_HINTEXT';
//   static String FORM_RELOCATION_NEWADRESSE_HINTEXT_VALUE = '';

//   static const DATE_SOUHAITE = 'DATE_SOUHAITE';
//   static String DATE_SOUHAITE_VALUE = '';
//   static const DATE_SOUHAITE_HINTEXT = 'DATE_SOUHAITE_HINTEXT';
//   static String DATE_SOUHAITE_HINTEXT_VALUE = '';

//   static const SECTION_COM_FIBRE_STATUS_REJET =
//       'SECTION_COM_FIBRE_STATUS_REJET';
//   static String SECTION_COM_FIBRE_STATUS_REJET_VALUE = '';

//   static const SECTION_COM_FIBRE_STATUS_MILITE_MENS =
//       'SECTION_COM_FIBRE_STATUS_MILITE_MENS';
//   static String SECTION_COM_FIBRE_STATUS_MILITE_MENS_VALUE = '';

//   static const SECTION_COM_FIBRE_STATUS_ENCOURS =
//       'SECTION_COM_FIBRE_STATUS_ENCOURS';
//   static String SECTION_COM_FIBRE_STATUS_ENCOURS_VALUE = '';

// // MABOX_HEADER_BTN_ACTUALISER
//   static const PAGE_GUARD = 'PAGE_GUARD';
//   static String PAGE_GUARD_VALUE = '';

//   static const MABOX_HEADER_BTN_ACTUALISER = 'MABOX_HEADER_BTN_ACTUALISER';
//   static String MABOX_HEADER_BTN_ACTUALISER_VALUE = '';

//   static const MABOX_HEADER_POPUP_AFTER_BTN_ACTUALISER =
//       'MABOX_HEADER_POPUP_AFTER_BTN_ACTUALISER';
//   static String MABOX_HEADER_POPUP_AFTER_BTN_ACTUALISER_VALUE = '';

//   static const SURCLASSEMENT_DESC = 'SURCLASSEMENT_DESC';
//   static String SURCLASSEMENT_DESC_VALUE = '';

//   static const PAGE_GUARD_TITLE = 'PAGE_GUARD_TITLE';
//   static String PAGE_GUARD_TITLE_VALUE = '';

//   static const PAGE_GUARD_BTN_TITLE = 'PAGE_GUARD_BTN_TITLE';
//   static String PAGE_GUARD_BTN_TITLE_VALUE = '';

//   static const PAGE_GUARD_AUTH = 'PAGE_GUARD_AUTH';
//   static String PAGE_GUARD_AUTH_VALUE = '';

//   static const PAGE_GUARD_MAXIT_APP_LINK_IOS = 'PAGE_GUARD_MAXIT_APP_LINK_IOS';
//   static String PAGE_GUARD_MAXIT_APP_LINK_IOS_VALUE = '';

//   static const PAGE_GUARD_MAXIT_APP_LINK_ANDROID =
//       'PAGE_GUARD_MAXIT_APP_LINK_ANDROID';
//   static String PAGE_GUARD_MAXIT_APP_LINK_ANDROID_VALUE = '';

//   static const PAGE_GUARD_MAXIT_BTN_TITLE = 'PAGE_GUARD_MAXIT_BTN_TITLE';
//   static String PAGE_GUARD_MAXIT_BTN_TITLE_VALUE = '';

//   static const MISE_EN_SERVICE_FIRST_DATE = 'MISE_EN_SERVICE_FIRST_DATE';
//   static String MISE_EN_SERVICE_FIRST_DATE_VALUE = '';

//   static const MISE_EN_SERVICE_LAST_DATE = 'MISE_EN_SERVICE_LAST_DATE';
//   static String MISE_EN_SERVICE_LAST_DATE_VALUE = '';

//   static const ALLER_ACCUEIL_VERIF = 'ALLER_ACCUEIL_VERIF';
//   static String ALLER_ACCUEIL_VERIF_VALUE = ''; //LINK_ORANGE_MABOX_SITE

//   static const PLUS_INFO_ABOUT_US = 'PLUS_INFO_ABOUT_US';
//   static String PLUS_INFO_ABOUT_US_VALUE = ''; //LINK_ORANGE_MABOX_SITE

//   //HIDE_SERVICE_SECTION

//   static const PROFIL_DEL_APPBAR_TITLE = 'PROFIL_DEL_APPBAR_TITLE';
//   static String PROFIL_DEL_APPBAR_TITLE_VALUE = '';

//   static const PROFIL_DEL_TITRE = 'PROFIL_DEL_TITRE';
//   static String PROFIL_DEL_TITRE_VALUE = '';

//   static const PROFIL_DELETE_DESCRIPTION = 'PROFIL_DELETE_DESCRIPTION';
//   static String PROFIL_DELETE_DESCRIPTION_VALUE = '';

//   static const PROFIL_DEL_CONFIRM_TEL = 'PROFIL_DEL_CONFIRM_TEL';
//   static String PROFIL_DEL_CONFIRM_TEL_VALUE = '';

//   static const PROFIL_DEL_CONFIRM_TEL_DESC = 'PROFIL_DEL_CONFIRM_TEL_DESC';
//   static String PROFIL_DEL_CONFIRM_TEL_DESC_VALUE = '';

//   static const PROFIL_DEL_ERROR_DIFF_NUMBER = 'PROFIL_DEL_ERROR_DIFF_NUMBER';
//   static String PROFIL_DEL_ERROR_DIFF_NUMBER_VALUE = '';

//   static const PROFIL_DEL_BTN_TITLE = 'PROFIL_DEL_BTN_TITLE';
//   static String PROFIL_DEL_BTN_TITLE_VALUE = '';

//   //MAXIT_ONLY

//   static const MAXIT_ONLY = 'MAXIT_ONLY';
//   static String MAXIT_ONLY_VALUE = '';

//   // MA_MAISON_HIDE

//   static const MA_MAISON_HIDE = 'MA_MAISON_HIDE';
//   static String MA_MAISON_HIDE_VALUE = '';

//   static const HIDE_SERVICE_SECTION = 'HIDE_SERVICE_SECTION';
//   static String HIDE_SERVICE_SECTION_VALUE = ''; //LINK_ORANGE_MABOX_SITE

//   //HIDE_GRAPH_SECTION

//   static const HIDE_GRAPH_SECTION = 'HIDE_GRAPH_SECTION';
//   static String HIDE_GRAPH_SECTION_VALUE = ''; //LINK_ORANGE_MABOX_SIT

//   static const HIDE_TEST_DEBIT_VIEW = 'HIDE_TEST_DEBIT_VIEW';
//   static String HIDE_TEST_DEBIT_VIEW_VALUE = '';

//   //POPUP_TEST_DEBIT_TITRE

//   static const POPUP_TEST_DEBIT_TITRE = 'POPUP_TEST_DEBIT_TITRE';
//   static String POPUP_TEST_DEBIT_TITRE_VALUE = '';

//   //POPUP_TEST_DEBIT_DESCRIPTION_VALUE
//   static const POPUP_TEST_DEBIT_DESCRIPTION = 'POPUP_TEST_DEBIT_DESCRIPTION';
//   static String POPUP_TEST_DEBIT_DESCRIPTION_VALUE = '';

//   //HIDE_TEST_DEBIT_VIEW

//   static const LINK_PREPAYER = 'LINK_PREPAYER';
//   static String LINK_PREPAYER_VALUE = ''; //LINK_ORANGE_MABOX_SITE

//   static const LINK_ORANGE_MABOX_SITE = 'LINK_ORANGE_MABOX_SITE';
//   static String LINK_ORANGE_MABOX_SITE_VALUE = ''; //

//   static const HIDE_LIVEBOX_CONTENT = 'HIDE_LIVEBOX_CONTENT';
//   static String HIDE_LIVEBOX_CONTENT_VALUE = ''; //

//   //HIDE_LIVEBOX_CONTENT_VALUE

//   static const LINK_POSTPAYER = 'LINK_POSTPAYER';
//   static String LINK_POSTPAYER_VALUE = '';

//   static const LINK_ORANGE_STORE = 'LINK_ORANGE_STORE';
//   static String LINK_ORANGE_STORE_VALUE = '';

//   static const KARMA_DEVICE = 'KARMA_DEVICE';

//   static const NOM_DU_ROBOT = 'NOM_DU_ROBOT';
//   static String NOM_DU_ROBOT_VALUE = '';

//   static const ACCEUIL_HEADER_GREET = 'ACCEUIL_HEADER_GREET';
//   static String ACCEUIL_HEADER_GREET_VALUE = '';

//   //ACCEUIL_HEADER_FIBERLINE
//   static const ACCEUIL_HEADER_FIBERLINE = 'ACCEUIL_HEADER_FIBERLINE';
//   static String ACCEUIL_HEADER_FIBERLINE_VALUE = '';

//   //ACCEUIL_QUICKACTION_TEST_DEBIT

//   ///RATTACHEMENT_MANUEL_HIDE
//   ///
//   static const RATTACHEMENT_MANUEL_HIDE = 'RATTACHEMENT_MANUEL_HIDE';
//   static String RATTACHEMENT_MANUEL_HIDE_VALUE = '';

//   static const ACCEUIL_QUICKACTION_TEST_DEBIT =
//       'ACCEUIL_QUICKACTION_TEST_DEBIT';
//   static String ACCEUIL_QUICKACTION_TEST_DEBIT_VALUE = '';

//   //ACCEUIL_QUICKACTION_WIFI

//   static const ACCEUIL_QUICKACTION_WIFI = 'ACCEUIL_QUICKACTION_WIFI';
//   static String ACCEUIL_QUICKACTION_WIFI_VALUE = '';

//   //ACCEUIL_QUICKACTION_RESTART_EQUIPEMENT

//   static const ACCEUIL_QUICKACTION_RESTART_EQUIPEMENT =
//       'ACCEUIL_QUICKACTION_RESTART_EQUIPEMENT';
//   static String ACCEUIL_QUICKACTION_RESTART_EQUIPEMENT_VALUE = '';

//   //ACCEUIL_QUICKACTION_TRACKMYREQUEST

//   static const ACCEUIL_QUICKACTION_TRACKMYREQUEST =
//       'ACCEUIL_QUICKACTION_TRACKMYREQUEST';
//   static String ACCEUIL_QUICKACTION_TRACKMYREQUEST_VALUE = '';

//   //ACCEUIL_QUICKACTION_CONTACTUS

//   static const ACCEUIL_QUICKACTION_CONTACTUS = 'ACCEUIL_QUICKACTION_CONTACTUS';
//   static String ACCEUIL_QUICKACTION_CONTACTUS_VALUE = '';

//   static const ACCEUIL_QUICKACTION_BESOIN_AIDE =
//       'ACCEUIL_QUICKACTION_BESOIN_AIDE';
//   static String ACCEUIL_QUICKACTION_BESOIN_AIDE_VALUE = '';

// //ACCEUIL_ETAT_SERVICE
//   static const ACCEUIL_ETAT_SERVICE = 'ACCEUIL_ETAT_SERVICE';
//   static String ACCEUIL_ETAT_SERVICE_VALUE = '';

//   //ACCEUIL_JE_RECHARGE
//   static const ACCEUIL_JE_RECHARGE = 'ACCEUIL_JE_RECHARGE';
//   static String ACCEUIL_JE_RECHARGE_VALUE = '';

//   //ACCEUIL_MES_FACTURES
//   static const ACCEUIL_MES_FACTURES = 'ACCEUIL_MES_FACTURES';
//   static String ACCEUIL_MES_FACTURES_VALUE = '';

//   //ACCUIEL_DICE_DERNIERDEMARRAGE
//   static const ACCUIEL_DICE_DERNIERDEMARRAGE = 'ACCUIEL_DICE_DERNIERDEMARRAGE';
//   static String ACCUIEL_DICE_DERNIERDEMARRAGE_VALUE = '';

//   //ACCEUIL_VOLUMES_CONSOMMEE
//   static const ACCEUIL_VOLUMES_CONSOMMEE = 'ACCEUIL_VOLUMES_CONSOMMEE';
//   static String ACCEUIL_VOLUMES_CONSOMMEE_VALUE = '';

//   static const MABOX_HEADER_TITLE = 'MABOX_HEADER_TITLE';
//   static String MABOX_HEADER_TITLE_VALUE = '';

//   // ACCEUIL_DERNIER_DEMARRAGE
//   static const ACCEUIL_DERNIER_DEMARRAGE = 'ACCEUIL_DERNIER_DEMARRAGE';
//   static String ACCEUIL_DERNIER_DEMARRAGE_VALUE = '';

//   // ACCEUIL_NETWORK_PERFORMANCE
//   static const ACCEUIL_NETWORK_PERFORMANCE = 'ACCEUIL_NETWORK_PERFORMANCE';
//   static String ACCEUIL_NETWORK_PERFORMANCE_VALUE = '';

//   //ACCEUIL_NETWORK
//   static const ACCEUIL_NETWORK = 'ACCEUIL_NETWORK';
//   static String ACCEUIL_NETWORK_VALUE = '';

//   //ACCEUIL_VoIP
//   static const ACCEUIL_VoIP = 'ACCEUIL_VoIP';
//   static String ACCEUIL_VoIP_VALUE = '';

//   // ACCEUIL_PAS_INCLUS
//   static const ACCEUIL_PAS_INCLUS = 'ACCEUIL_PAS_INCLUS';
//   static String ACCEUIL_PAS_INCLUS_VALUE = '';

//   // ACCEUIL_DOWNLOAD
//   static const ACCEUIL_DOWNLOAD = 'ACCEUIL_DOWNLOAD';
//   static String ACCEUIL_DOWNLOAD_VALUE = '';

//   // ACCEUIL_UPLOAD
//   static const ACCEUIL_UPLOAD = 'ACCEUIL_UPLOAD';
//   static String ACCEUIL_UPLOAD_VALUE = '';

//   // ACCEUIL_MAX_DEBIT
//   static const ACCEUIL_MAX_DEBIT = 'ACCEUIL_MAX_DEBIT';
//   static String ACCEUIL_MAX_DEBIT_VALUE = '';

//   // ACCEUIL_LAST_TEST
//   static const ACCEUIL_LAST_TEST = 'ACCEUIL_LAST_TEST';
//   static String ACCEUIL_LAST_TEST_VALUE = '';

//   // ACCEUIL_EXPIRATION_DATE
//   static const ACCEUIL_EXPIRATION_DATE = 'ACCEUIL_EXPIRATION_DATE';
//   static String ACCEUIL_EXPIRATION_DATE_VALUE = '';

//   // ACCEUIL_UPADE_DATE
//   static const ACCEUIL_UPADE_DATE = 'ACCEUIL_UPADE_DATE';
//   static String ACCEUIL_UPADE_DATE_VALUE = '';

//   // ACCEUIL_HISTORIQUE_DES_TEST_DEBIT
//   static const ACCEUIL_HISTORIQUE_DES_TEST_DEBIT =
//       'ACCEUIL_HISTORIQUE_DES_TEST_DEBIT';
//   static String ACCEUIL_HISTORIQUE_DES_TEST_DEBIT_VALUE = '';

//   // ACC_FACTURE_RESTANT
//   static const ACC_FACTURE_RESTANT = 'ACC_FACTURE_RESTANT';
//   static String ACC_FACTURE_RESTANT_VALUE = '';

//   //================================================================================== NEW UPDATE

//   // ACCEUIL_SUSPENSION_DATE
//   static const ACCEUIL_SUSPENSION_DATE = 'ACCEUIL_SUSPENSION_DATE';
//   static String ACCEUIL_SUSPENSION_DATE_VALUE = '';

//   // ACCEUIL_FACTURES_IMPAYEES
//   static const ACCEUIL_FACTURES_IMPAYEES = 'ACCEUIL_FACTURES_IMPAYEES';
//   static String ACCEUIL_FACTURES_IMPAYEES_VALUE = '';

//   // ACCEUIL_AUCUNE_FACTURE_CE_MOIS
//   static const ACCEUIL_AUCUNE_FACTURE_CE_MOIS =
//       'ACCEUIL_AUCUNE_FACTURE_CE_MOIS';
//   static String ACCEUIL_AUCUNE_FACTURE_CE_MOIS_VALUE = '';

//   //================================================================================== NEW UPDATE

//   // TEST_DEBIT_LIVEBOX
//   static const TEST_DEBIT_LIVEBOX = 'TEST_DEBIT_LIVEBOX';
//   static String TEST_DEBIT_LIVEBOX_VALUE = '';
//   //TEST_DEBIT_RECEPTION
//   static const TEST_DEBIT_RECEPTION = 'TEST_DEBIT_RECEPTION';
//   static String TEST_DEBIT_RECEPTION_VALUE = '';
//   // TEST_DEBIT_EQUIPEMENT
//   static const TEST_DEBIT_EQUIPEMENT = 'TEST_DEBIT_EQUIPEMENT';
//   static String TEST_DEBIT_EQUIPEMENT_VALUE = '';
//   // TEST_DEBIT_RELANCER_TEST
//   static const TEST_DEBIT_RELANCER_TEST = 'TEST_DEBIT_RELANCER_TEST';
//   static String TEST_DEBIT_RELANCER_TEST_VALUE = '';

//   //================================================================================== MON WIFI

//   // MON_WIFI_TITLE
//   static const MON_WIFI_TITLE = 'MON_WIFI_TITLE';
//   static String MON_WIFI_TITLE_VALUE = '';
//   // MON_WIFI_CHOISIR_ACTION
//   static const MON_WIFI_CHOISIR_ACTION = 'MON_WIFI_CHOISIR_ACTION';
//   static String MON_WIFI_CHOISIR_ACTION_VALUE = '';
//   // MON_WIFI_MODIFIER_PASSWORD
//   static const MON_WIFI_MODIFIER_PASSWORD = 'MON_WIFI_MODIFIER_PASSWORD';
//   static String MON_WIFI_MODIFIER_PASSWORD_VALUE = '';
//   // MON_WIFI_CHANGER_MON_WIFI
//   static const MON_WIFI_CHANGER_MON_WIFI = 'MON_WIFI_CHANGER_MON_WIFI';
//   static String MON_WIFI_CHANGER_MON_WIFI_VALUE = '';
//   // MON_WIFI_CHANGER_MON_STATUS_WIFI
//   static const MON_WIFI_CHANGER_MON_STATUS_WIFI =
//       'MON_WIFI_CHANGER_MON_STATUS_WIFI';
//   static String MON_WIFI_CHANGER_MON_STATUS_WIFI_VALUE = '';
//   // MON_WIFI_CHOSEACTION
//   static const MON_WIFI_CHOSEACTION = 'MON_WIFI_CHOSEACTION';
//   static String MON_WIFI_CHOSEACTION_VALUE = '';
//   // MON_WIFI_CHOSEACTIONS
//   static const MON_WIFI_CHOSEACTIONS = 'MON_WIFI_CHOSEACTIONS';
//   static String MON_WIFI_CHOSEACTIONS_VALUE = '';

//   // MON_WIFI_CHOSEWIFI
//   static const MON_WIFI_CHOSEWIFI = 'MON_WIFI_CHOSEWIFI';
//   static String MON_WIFI_CHOSEWIFI_VALUE = '';

//   //================================================================================== REDEMARRER EQUIPEMENT

//   // REDEMARRER_EQUIPEMENTS_TITLE
//   static const REDEMARRER_EQUIPEMENTS_TITLE = 'REDEMARRER_EQUIPEMENTS_TITLE';
//   static String REDEMARRER_EQUIPEMENTS_TITLE_VALUE = '';
//   //  REDEMARRER_EQUIPEMENTS_DERNIER_DEMARRAGE
//   static const REDEMARRER_EQUIPEMENTS8_DERNIER_DEMARRAGE =
//       'MON_WIFI_REDEMARRER_EQUIPEMENTS8_DERNIER_DEMARRAGE';
//   static String REDEMARRER_EQUIPEMENTS8_DERNIER_DEMARRAGE_VALUE = '';

//   //  RESTAREQUIPEMNT_LASTRELOAD
//   static const RESTAREQUIPEMNT_LASTRELOAD =
//       'MON_WIFI_RESTAREQUIPEMNT_LASTRELOAD';
//   static String RESTAREQUIPEMNT_LASTRELOAD_VALUE = '';

//   //  EQUIPEMNT_RELOADES
//   static const EQUIPEMNT_RELOADES = 'MON_WIFI_EQUIPEMNT_RELOADES';
//   static String EQUIPEMNT_RELOADES_VALUE = '';

//   // RELOAD_EQUIPEMENT
//   static const RELOAD_EQUIPEMENT = 'RELOAD_EQUIPEMENT';
//   static String RELOAD_EQUIPEMENT_VALUE = '';

//   // EQUIPENTRELOAD_NOTHISTORIES
//   static const EQUIPENTRELOAD_NOTHISTORIES = 'EQUIPENTRELOAD_NOTHISTORIES';
//   static String EQUIPENTRELOAD_NOTHISTORIES_VALUE = '';

//   // RELOADEQUIPEMENT_BOXFIBRE
//   static const RELOADEQUIPEMENT_BOXFIBRE = 'RELOADEQUIPEMENT_BOXFIBRE';
//   static String RELOADEQUIPEMENT_BOXFIBRE_VALUE = '';

//   //================================================================================== SUIVRE MES DEMANDE

//   // SUIVRE_MES_DEMANDE_TITLE
//   static const SUIVRE_MES_DEMANDE_TITLE = 'MON_WIFI_SUIVRE_MES_DEMANDE_TITLE';
//   static String SUIVRE_MES_DEMANDE_TITLE_VALUE = '';

//   // SUIVRE_MES_DEMANDES_TITELS
//   static const SUIVRE_MES_DEMANDES_TITELS =
//       'MON_WIFI_SUIVRE_MES_DEMANDES_TITELS';
//   static String SUIVRE_MES_DEMANDES_TITELS_VALUE = '';

//   // SUIVRE_MES_COMMANDES
//   static const SUIVRE_MES_COMMANDES = 'MON_WIFI_SUIVRE_MES_COMMANDES';
//   static String SUIVRE_MES_COMMANDES_VALUE = '';

//   // FOLLOW_REQUEST_ID
//   static const FOLLOW_REQUEST_ID = 'MON_WIFI_FOLLOW_REQUEST_ID';
//   static String FOLLOW_REQUEST_ID_VALUE = '';

//   // TAKEREQUEST_COMMANDE
//   static const TAKEREQUEST_COMMANDE = 'MON_WIFI_TAKEREQUEST_COMMANDE';
//   static String TAKEREQUEST_COMMANDE_VALUE = '';

//   // TAKEREQUEST_CHOSEID
//   static const TAKEREQUEST_CHOSEID = 'MON_WIFI_TAKEREQUEST_CHOSEID';
//   static String TAKEREQUEST_CHOSEID_VALUE = '';

//   // //================================================================================== Ma box

//   // MA_BOX_DERNIER_DEMARRAGE
//   static const MA_BOX_DERNIER_DEMARRAGE = 'MON_WIFI_MA_BOX_DERNIER_DEMARRAGE';
//   static String MA_BOX_DERNIER_DEMARRAGE_VALUE = '';

//   // SUIVRE_MES_COMMANDES
//   static const MA_BOX_ACTUALISER = 'MON_WIFI_MA_BOX_ACTUALISER';
//   static String MA_BOX_ACTUALISER_VALUE = '';

//   // MA_BOX_DERNIERE_CONNEXION
//   static const MA_BOX_DERNIERE_CONNEXION = 'MON_WIFI_MA_BOX_DERNIERE_CONNEXION';
//   static String mA_BOX_DERNIERE_CONNEXION_VALUE = '';

//   // MA_BOX_REDEMARRER
//   static const MA_BOX_REDEMARRER = 'MA_BOX_REDEMARRER';
//   static String MA_BOX_REDEMARRER_VALUE = '';

// //  MA_BOX_EQUIPEMENT_CONNECTE_PAR
//   static const MA_BOX_EQUIPEMENT_CONNECTE_PAR =
//       'MON_WIFI_MA_BOX_EQUIPEMENT_CONNECTE_PAR';
//   static String MA_BOX_EQUIPEMENT_CONNECTE_PAR_VALUE = '';

// // MA_BOX_SEE_MORE
//   static const MA_BOX_SEE_MORE = 'MON_WIFI_MA_BOX_SEE_MORE';
//   static String MA_BOX_SEE_MORE_VALUE = '';

// //  MA_BOX_SHOWLESS
//   static const MA_BOX_SHOWLESS = 'MON_WIFI_MA_BOX_SHOWLESS';
//   static String MA_BOX_SHOWLESS_VALUE = '';

//   // MA_BOX_CABLE
//   static const MA_BOX_CABLE = 'MA_BOX_CABLE';
//   static String MA_BOX_CABLE_VALUE = '';

//   // MA_BOX_ACCES_FIBRE_DIAGNOSTIQUE
//   static const MA_BOX_ACCES_FIBRE_DIAGNOSTIQUE =
//       'MON_WIFI_MA_BOX_ACCES_FIBRE_DIAGNOSTIQUE';
//   static String MA_BOX_ACCES_FIBRE_DIAGNOSTIQUE_VALUE = '';

//   // MA_BOX_ACTIVER_WIFI_GUEST
//   static const MA_BOX_ACTIVER_WIFI_GUEST = 'MON_WIFI_MA_BOX_ACTIVER_WIFI_GUEST';
//   static String MA_BOX_ACTIVER_WIFI_GUEST_VALUE = '';

//   // MA_BOX_LOCAL_NETWORk
//   static const MA_BOX_LOCAL_NETWORk = 'MA_BOX_LOCAL_NETWORk';
//   static String MA_BOX_LOCAL_NETWORk_VALUE = '';

// // MA_BOX_VIEWMORE
//   static const MA_BOX_VIEWMORE = 'MA_BOX_VIEWMORE';
//   static String MA_BOX_VIEWMORE_VALUE = '';

// // MA_BOX_DECONNEXION
//   static const MA_BOX_DECONNEXION = 'MA_BOX_DECONNEXION';
//   static String MA_BOX_DECONNEXION_VALUE = '';

// // MA_BOX_TAKEREQUEST
//   static const MA_BOX_TAKEREQUEST = 'MA_BOX_TAKEREQUEST';
//   static String MA_BOX_TAKEREQUEST_VALUE = '';

// // MABOX_GUESTWIFI
//   static const MABOX_GUESTWIFI = 'MABOX_GUESTWIFI';
//   static String MABOX_GUESTWIFI_VALUE = '';

// //MABOX_DEVICEMODEL
//   static const MABOX_DEVICEMODEL = 'MABOX_DEVICEMODEL';
//   static String MABOX_DEVICEMODEL_VALUE = '';

// // MABOX_FRABRIQUANT
//   static const MABOX_FRABRIQUANT = 'MABOX_FRABRIQUANT';
//   static String MABOX_FRABRIQUANT_VALUE = '';

// // MABOX_SERINUMBER
//   static const MABOX_SERINUMBER = 'MABOX_SERINUMBER';
//   static String MABOX_SERINUMBER_VALUE = '';

// // MABOX_ADRESSIP
//   static const MABOX_ADRESSIP = 'MABOX_ADRESSIP';
//   static String MABOX_ADRESSIP_VALUE = '';

// // MABOX_ADRESSIPLOCAL
//   static const MABOX_ADRESSIPLOCAL = 'MABOX_ADRESSIPLOCAL';
//   static String MABOX_ADRESSIPLOCAL_VALUE = '';

// // MABOX_ADRESSMAC
//   static const MABOX_ADRESSMAC = 'MABOX_ADRESSMAC';
//   static String MABOX_ADRESSMAC_VALUE = '';

// // MABOX_SAVEDATE
//   static const MABOX_SAVEDATE = 'MABOX_SAVEDATE';
//   static String MABOX_SAVEDATE_VALUE = '';

// // MABOX_ACCESFIBRE
//   static const MABOX_ACCESFIBRE = 'MABOX_ACCESFIBRE';
//   static String MABOX_ACCESFIBRE_VALUE = '';

// // MABOX_TV
//   static const MABOX_TV = 'MABOX_TV';
//   static String MABOX_TV_VALUE = '';

// // MABOX_VOIP
//   static const MABOX_VOIP = 'MABOX_VOIP';
//   static String MABOX_VOIP_VALUE = '';

// // MABOX_SMATHOME
//   static const MABOX_SMATHOME = 'MABOX_SMATHOME';
//   static String MABOX_SMATHOME_VALUE = '';

// // MABOX_WIFI
//   static const MABOX_WIFI = 'MABOX_WIFI';
//   static String MABOX_WIFI_VALUE = '';

// // ==================================================== MES COMMNANDES

// // COMMANDE_TAKEREQUEST
//   static const COMMANDE_TAKEREQUEST = 'COMMANDE_TAKEREQUEST';
//   static String COMMANDE_TAKEREQUEST_VALUE = '';

// // COMMANDE_VIDE
//   static const COMMANDE_VIDE = 'COMMANDE_VIDE';
//   static String COMMANDE_VIDE_VALUE = '';

//   static const TRANSFERT_LIGNE_VIDE = 'TRANSFERT_LIGNE_VIDE';
//   static String TRANSFERT_LIGNE_VIDE_VALUE = '';

//   static const OFFRE_VIDE = 'OFFRE_VIDE';
//   static String OFFRE_VIDE_VALUE = '';

//   static const SIGNALISATION_VIDE = 'SIGNALISATION_VIDE';
//   static String SIGNALISATION_VIDE_VALUE = '';

// // COMMANDE_DETAIL
//   static const COMMANDE_DETAIL = 'COMMANDE_DETAIL';
//   static String COMMANDE_DETAIL_VALUE = '';

// // COMMANDE_SUIVRE
//   static const COMMANDE_SUIVRE = 'COMMANDE_SUIVRE';
//   static String COMMANDE_SUIVRE_VALUE = '';

// // COMMANDE_INEED
//   static const COMMANDE_INEED = 'COMMANDE_INEED';
//   static String COMMANDE_INEED_VALUE = '';

// // COMMANDE_STOPABONNEMENT
//   static const COMMANDE_STOPABONNEMENT = 'COMMANDE_STOPABONNEMENT';
//   static String COMMANDE_STOPABONNEMENT_VALUE = '';

// // COMMANDE_DEMENAGE
//   static const COMMANDE_DEMENAGE = 'COMMANDE_DEMENAGE';
//   static String COMMANDE_DEMENAGE_VALUE = '';

// // COMMANDE_CHANGEOFFRE
//   static const COMMANDE_CHANGEOFFRE = 'COMMANDE_CHANGEOFFRE';
//   static String COMMANDE_CHANGEOFFRE_VALUE = '';

// // COMMANDE_RESTARABONNEMENT
//   static const COMMANDE_RESTARABONNEMENT = 'COMMANDE_RESTARABONNEMENT';
//   static String COMMANDE_RESTARABONNEMENT_VALUE = '';

// // ========================================================== PAYER SA FACTURE FIBRE

// // BY_FACTURE_SMS
//   static const BY_FACTURE_SMS = 'BY_FACTURE_SMS';
//   static String BY_FACTURE_SMS_VALUE = '';

// // BY_FACTURE_OM
//   static const BY_FACTURE_OM = 'BY_FACTURE_OM';
//   static String BY_FACTURE_OM_VALUE = '';

// // BY_FACTURE_BYOM
//   static const BY_FACTURE_BYOM = 'BY_FACTURE_BYOM';
//   static String BY_FACTURE_BYOM_VALUE = '';

// // BY_FACTURE_BYTIERS
//   static const BY_FACTURE_BYTIERS = 'BY_FACTURE_BYTIERS';
//   static String BY_FACTURE_BYTIERS_VALUE = '';

// // BY_FACTURE_SCANANDPAIE
//   static const BY_FACTURE_SCANANDPAIE = 'BY_FACTURE_SCANANDPAIE';
//   static String BY_FACTURE_SCANANDPAIE_VALUE = '';

// // BY_FACTURE_PRELEVEMENTBC
//   static const BY_FACTURE_PRELEVEMENTBC = 'BY_FACTURE_PRELEVEMENTBC';
//   static String BY_FACTURE_PRELEVEMENTBC_VALUE = '';

// // BY_FACTURE_PRELEVBCDSC
//   static const BY_FACTURE_PRELEVBCDSC = 'BY_FACTURE_PRELEVBCDSC';
//   static String BY_FACTURE_PRELEVBCDSC_VALUE = '';

// // BY_FACTURE_PRELEVBCDSC
//   static const BY_FACTURE_PRELEVBCDSCITM = 'BY_FACTURE_PRELEVBCDSCITM';
//   static String BY_FACTURE_PRELEVBCDSCITM_VALUE = '';

// // BY_FACTURE_PRELEVBCBICICI
//   static const BY_FACTURE_PRELEVBCBICICI = 'BY_FACTURE_PRELEVBCBICICI';
//   static String BY_FACTURE_PRELEVBCBICICI_VALUE = '';

// // BY_FACTURE_PRELEVBCNSIA
//   static const BY_FACTURE_PRELEVBCNSIA = 'BY_FACTURE_PRELEVBCNSIA';
//   static String BY_FACTURE_PRELEVBCNSIA_VALUE = '';

// // BY_FACTURE_PRELEVBCBACI
//   static const BY_FACTURE_PRELEVBCBACI = 'BY_FACTURE_PRELEVBCBACI';
//   static String BY_FACTURE_PRELEVBCBACI_VALUE = '';

// // BY_FACTURE_PRELEVBCECOBANK
//   static const BY_FACTURE_PRELEVBCECOBANK = 'BY_FACTURE_PRELEVBCECOBANK';
//   static String BY_FACTURE_PRELEVBCECOBANK_VALUE = '';

// // BY_FACTURE_BUYSHORPE
//   static const BY_FACTURE_BUYSHORPE = 'BY_FACTURE_BUYSHORPE';
//   static String BY_FACTURE_BUYSHORPE_VALUE = '';

// // BY_FACTURE_BUYSHOPDESC
//   static const BY_FACTURE_BUYSHOPDESC = 'BY_FACTURE_BUYSHOPDESC';
//   static String BY_FACTURE_BUYSHOPDESC_VALUE = '';

// // BY_FACTURE_BUYSHOPITM
//   static const BY_FACTURE_BUYSHOPITM = 'BY_FACTURE_BUYSHOPITM';
//   static String BY_FACTURE_BUYSHOPITM_VALUE = '';

// // ================================================================= MA COMMUNAUTE

// // MYCOMMUNAUTE_PROFILINFO
//   static const MYCOMMUNAUTE_PROFILINFO = 'MYCOMMUNAUTE_PROFILINFO';
//   static String MYCOMMUNAUTE_PROFILINFO_VALUE = '';

// // MYCOMMUNAUTE_SURCLASSEMENT
//   static const MYCOMMUNAUTE_SURCLASSEMENT = 'MYCOMMUNAUTE_SURCLASSEMENT';
//   static String MYCOMMUNAUTE_SURCLASSEMENT_VALUE = '';

// // MYCOMMUNAUTE_PARRAINAGE
//   static const MYCOMMUNAUTE_PARRAINAGE = 'MYCOMMUNAUTE_PARRAINAGE';
//   static String MYCOMMUNAUTE_PARRAINAGE_VALUE = '';

// // MYCOMMUNAUTE_PARRAI_TOTALGAIN
//   static const MYCOMMUNAUTE_PARRAI_TOTALGAIN = 'MYCOMMUNAUTE_PARRAI_TOTALGAIN';
//   static String MYCOMMUNAUTE_PARRAI_TOTALGAIN_VALUE = '';

// // MYCOMMUNAUT_PARRAI_TOTALGAINDESC
//   static const MYCOMMUNAUT_PARRAI_TOTALGAINDESC =
//       'MYCOMMUNAUT_PARRAI_TOTALGAINDESC';
//   static String MYCOMMUNAUT_PARRAI_TOTALGAINDESC_VALUE = '';

// // MYCOMMUNAUTE_PARRAI_BECOMEPARRAINFIBRE
//   static const MYCOMMUNAUTE_PARRAI_BECOMEPARRAINFIBRE =
//       'MYCOMMUNAUTE_PARRAI_BECOMEPARRAINFIBRE';
//   static String MYCOMMUNAUTE_PARRAI_BECOMEPARRAINFIBRE_VALUE = '';

// // MYCOMMUNAUT_PARRAI_PRICE
//   static const MYCOMMUNAUT_PARRAI_PRICE = 'MYCOMMUNAUT_PARRAI_PRICE';
//   static String MYCOMMUNAUT_PARRAI_PRICE_VALUE = '';

// // MYCOMMUNAUTE_PARRAI_FAQ
//   static const MYCOMMUNAUTE_PARRAI_FAQ = 'MYCOMMUNAUTE_PARRAI_FAQ';
//   static String MYCOMMUNAUTE_PARRAI_FAQ_VALUE = '';

// // MYCOMMUNAUTE_STATUS
//   static const MYCOMMUNAUTE_STATUS = 'MYCOMMUNAUTE_STATUS';
//   static String MYCOMMUNAUTE_STATUS_VALUE = '';

// // MYCOMMUNAUTE_NAME
//   static const MYCOMMUNAUTE_NAME = 'MYCOMMUNAUTE_NAME';
//   static String MYCOMMUNAUTE_NAME_VALUE = '';

// // MYCOMMUNAUTE_NDFIBRE
//   static const MYCOMMUNAUTE_NDFIBRE = 'MYCOMMUNAUTE_NDFIBRE';
//   static String MYCOMMUNAUTE_NDFIBRE_VALUE = '';

// // MYCOMMUNAUTE_LOGIN
//   static const MYCOMMUNAUTE_LOGIN = 'MYCOMMUNAUTE_LOGIN';
//   static String MYCOMMUNAUTE_LOGIN_VALUE = '';

// // MYCOMMUNAUTE_NClient
//   static const MYCOMMUNAUTE_NClient = 'MYCOMMUNAUTE_NClient';
//   static String MYCOMMUNAUTE_NClient_VALUE = '';

// // CHOSE_ID
//   static const CHOSE_ID = 'CHOSE_ID';
//   static String CHOSE_ID_VALUE = '';

// // MES_DEMANDES
//   static const MES_DEMANDESS = 'MES_DEMANDESS';
//   static String MES_DEMANDESS_VALUE = '';

//   /// LOGIN SCREENS
//   static const LOGIN_TITRE = 'LOGIN_TITRE';
//   static String LOGIN_TITRE_VALUE = 'Se connecter';

//   static const LOGIN_DESCRIPTION = 'LOGIN_DESCRIPTION';
//   static String LOGIN_DESCRIPTION_VALUE =
//       'Connectez-vous pour manager votre box orange';

//   static const LOGIN_CHAMP_TEL = 'LOGIN_CHAMP_TEL';
//   static String LOGIN_CHAMP_TEL_VALUE = 'Entre votre numéro de téléphone';

//   static const LOGIN_CHAMP_TEL_HINTTEXT = 'LOGIN_CHAMP_TEL_HINTTEXT';
//   static String LOGIN_CHAMP_TEL_HINTTEXT_VALUE = '0707070707';

//   static const LOGIN_CHAMP_TEL_ERROR = 'LOGIN_CHAMP_TEL_ERROR';
//   static String LOGIN_CHAMP_TEL_ERROR_VALUE = 'Entrer un numéro correct';

//   static const LOGIN_BTN_VALIDER = 'LOGIN_BTN_VALIDER';
//   static String LOGIN_BTN_VALIDER_VALUE = 'Valider';

//   static const LOGIN_SSO_TITRE = 'LOGIN_SSO_TITRE';
//   static String LOGIN_SSO_TITRE_VALUE = 'Connexion par : ';

//   static const LOGIN_SSO_GOOGLE = 'LOGIN_SSO_GOOGLE';
//   static String LOGIN_SSO_GOOGLE_VALUE = 'Continuer avec Google';

//   static const LOGIN_SSO_GOOGLE_DETAIL_TITRE = 'LOGIN_SSO_GOOGLE_DETAIL_TITRE';
//   static String LOGIN_SSO_GOOGLE_DETAIL_TITRE_VALUE =
//       'Se connecter en tant que ';

//   static const LOGIN_SSO_GOOGLE_DETAIL_PASVOUS =
//       'LOGIN_SSO_GOOGLE_DETAIL_PASVOUS';
//   static String LOGIN_SSO_GOOGLE_DETAIL_PASVOUS_VALUE = "Ce n'est pas vous ?";

//   static GlobalParams instance = const GlobalParams._();

//   ///OTP VERIF
//   ///

//   static const OTP_TITRE = 'OTP_TITRE';
//   static String OTP_TITRE_VALUE = '';

//   static const LOGIN_OTP_DESC_ORDRE_1 = 'LOGIN_OTP_DESC_ORDRE_1';
//   static String LOGIN_OTP_DESC_ORDRE_1_VALUE = '';

//   static const LOGIN_OTP_DESC_ORDRE_2 = 'LOGIN_OTP_DESC_ORDRE_2';
//   static String LOGIN_OTP_DESC_ORDRE_2_VALUE = '';

//   static const LOGIN_OTP_PREFIX = 'LOGIN_OTP_PREFIX';
//   static String LOGIN_OTP_PREFIX_VALUE = '';

//   static const LOGIN_OTP_RESEND_NEW = 'LOGIN_OTP_RESEND_NEW';
//   static String LOGIN_OTP_RESEND_NEW_VALUE = '';

//   static const LOGIN_OTP_RESEND = 'LOGIN_OTP_RESEND';
//   static String LOGIN_OTP_RESEND_VALUE = '';
//   ///////////////////////////////////////////////////////
//   ///
//   static const API_ERROR_UNKNOWN = 'API_ERROR_UNKNOWN';
//   static String API_ERROR_UNKNOWN_VALUE = '';

//   static const API_ERRROR_CONNECTION = 'API_ERRROR_CONNECTION';
//   static String API_ERRROR_CONNECTION_VALUE = '';

//   static const API_ERRROR_SOMETHINGWRONG = 'API_ERRROR_SOMETHINGWRONG';
//   static String API_ERRROR_SOMETHINGWRONG_VALUE = '';

//   static const API_SUCCESS_OPERATION = 'API_SUCCESS_OPERATION';
//   static String API_SUCCESS_OPERATION_VALUE = '';

//   static const FAQ_ONE = 'FAQ_ONE';
//   static String FAQ_ONE_VALUE = '';

//   static const FAQ_TWO = 'FAQ_TWO';
//   static String FAQ_TWO_VALUE = '';

//   static const FAQ_THREE = 'FAQ_THREE';
//   static String FAQ_THREE_VALUE = '';

//   static const COM_FIBRE_TITRE_DIAMANT = 'COM_FIBRE_TITRE_DIAMANT';
//   static String COM_FIBRE_TITRE_DIAMANT_VALUE = '';

//   static const COM_FIBRE_TITRE_OR = 'COM_FIBRE_TITRE_OR';
//   static String COM_FIBRE_TITRE_OR_VALUE = '';

//   static const COM_FIBRE_TITRE_ARGENT = 'COM_FIBRE_TITRE_ARGENT';
//   static String COM_FIBRE_TITRE_ARGENT_VALUE = '';

//   static const COM_FIBRE_TITRE_BRONZE = 'COM_FIBRE_TITRE_BRONZE';
//   static String COM_FIBRE_TITRE_BRONZE_VALUE = '';

//   static const COM_FIBRE_TITRE_NIVEAU_SUP_A = 'COM_FIBRE_TITRE_NIVEAU_SUP_A';
//   static String COM_FIBRE_TITRE_NIVEAU_SUP_A_VALUE = '';

//   static const COM_FIBRE_TITRE_BRAVO = 'COM_FIBRE_TITRE_BRAVO';
//   static String COM_FIBRE_TITRE_BRAVO_VALUE = '';

//   static const COM_FIBRE_CONGRAT_OR = 'COM_FIBRE_CONGRAT_OR';
//   static String COM_FIBRE_CONGRAT_OR_VALUE = '';

//   static const COM_FIBRE_CONGRAT_DIAMANT = 'COM_FIBRE_CONGRAT_DIAMANT';
//   static String COM_FIBRE_CONGRAT_DIAMANT_VALUE = '';

//   static const PAGE_LOGIN_HINTETX_TEL = 'PAGE_LOGIN_HINTETX_TEL';
//   static String PAGE_LOGIN_HINTETX_TEL_VALUE = '';

//   static const COM_FIBRE_CONGRAT_BRONZE = 'COM_FIBRE_CONGRAT_BRONZE';
//   static String COM_FIBRE_CONGRAT_BRONZE_VALUE = '';

//   static const COM_FIBRE_CONGRAT_ARGENT = 'COM_FIBRE_CONGRAT_ARGENT';
//   static String COM_FIBRE_CONGRAT_ARGENT_VALUE = '';

//   static const COM_FIBRE_TEXT_GLOBAL = 'COM_FIBRE_TEXT_GLOBAL';
//   static String COM_FIBRE_TEXT_GLOBAL_VALUE = '';

//   static const COM_FIBRE_TEXT_FILLEUL = 'COM_FIBRE_TEXT_FILLEUL';
//   static String COM_FIBRE_TEXT_FILLEUL_VALUE = '';

//   static const TITLE_SEARCH = 'TITLE_SEARCH';
//   static String TITLE_SEARCH_VALUE = '';

//   static const SUIVRE_TEXT = 'SUIVRE_TEXT';
//   static String SUIVRE_TEXT_VALUE = '';

//   static const EMPTY_TEXT = 'EMPTY_TEXT';
//   static String EMPTY_TEXT_VALUE = '';

//   static const EMPTY_DATA_TEXT = 'EMPTY_DATA_TEXT';
//   static String EMPTY_DATA_TEXT_VALUE = '';

//   static const MES_DEMANDE_FORM_TITRE = 'MES_DEMANDE_FORM_TITRE';
//   static String MES_DEMANDE_FORM_TITRE_VALUE = '';

//   static const MES_DEMANDE_FORM_SUB_TITRE = 'MES_DEMANDE_FORM_SUB_TITRE';
//   static String MES_DEMANDE_FORM_SUB_TITRE_VALUE = '';

//   static const MES_DEMANDE_FORM_HINTEXT_SIGNALISATION =
//       'MES_DEMANDE_FORM_HINTEXT_SIGNALISATION';
//   static String MES_DEMANDE_FORM_HINTEXT_SIGNALISATION_VALUE = '';

//   static const MES_DEMANDE_FORM_ERROR_SIGNALISATION =
//       'MES_DEMANDE_FORM_ERROR_SIGNALISATION';
//   static String MES_DEMANDE_FORM_ERROR_SIGNALISATION_VALUE = '';

//   static const MES_DEMANDE_FORM_HINTEXT_PROBLEM =
//       'MES_DEMANDE_FORM_HINTEXT_PROBLEM';
//   static String MES_DEMANDE_FORM_HINTEXT_PROBLEM_VALUE = '';

//   static const MES_DEMANDE_FORM_ERROR_PROBLEM =
//       'MES_DEMANDE_FORM_ERROR_PROBLEM';
//   static String MES_DEMANDE_FORM_ERROR_PROBLEM_VALUE = '';

//   static const MES_DEMANDE_FORM_HINTEXT_MESSAGE =
//       'MES_DEMANDE_FORM_HINTEXT_MESSAGE';
//   static String MES_DEMANDE_FORM_HINTEXT_MESSAGE_VALUE = '';

//   static const MES_DEMANDE_FORM_ERROR_MESSAGE =
//       'MES_DEMANDE_FORM_ERROR_MESSAGE';
//   static String MES_DEMANDE_FORM_ERROR_MESSAGE_VALUE = '';

//   static const MABOX_WIFI_QR_SAMPLE = 'MABOX_WIFI_QR_SAMPLE';
//   static String MABOX_WIFI_QR_SAMPLE_VALUE = '';

//   static const MABOX_WIFI_GUEST_TEXT = 'MABOX_WIFI_GUEST_TEXT';
//   static String MABOX_WIFI_GUEST_TEXT_VALUE = '';

//   static const MABOX_WIFI_GUEST_DESC = 'MABOX_WIFI_GUEST_DESC';
//   static String MABOX_WIFI_GUEST_DESC_VALUE = '';

//   static const MABOX_CONNECTE_TEXT = 'MABOX_CONNECTE_TEXT';
//   static String MABOX_CONNECTE_TEXT_VALUE = '';

//   static const MABOX_DECONNECTE_TEXT = 'MABOX_DECONNECTE_TEXT';
//   static String MABOX_DECONNECTE_TEXT_VALUE = '';

//   static const HOME_FACTURE_DETAIL_TEXT = 'HOME_FACTURE_DETAIL_TEXT';
//   static String HOME_FACTURE_DETAIL_TEXT_VALUE = '';

//   static const HOME_DOWNLOAD_APP_TEXT = 'HOME_DOWNLOAD_APP_TEXT';
//   static String HOME_DOWNLOAD_APP_TEXT_VALUE = '';

//   static const HOME_FACTURENo_TEXT = 'HOME_FACTURENo_TEXT';
//   static String HOME_FACTURENo_TEXT_VALUE = '';

//   static const HOME_FACTURE_DATE_ECHEANCE_TEXT =
//       'HOME_FACTURE_DATE_ECHEANCE_TEXT';
//   static String HOME_FACTURE_DATE_ECHEANCE_TEXT_VALUE = '';

//   static const HOME_FACTURE_MONTANT_TEXT = 'HOME_FACTURE_MONTANT_TEXT';
//   static String HOME_FACTURE_MONTANT_TEXT_VALUE = '';

//   static const HOME_FACTURE_PAYER_TEXT = 'HOME_FACTURE_PAYER_TEXT';
//   static String HOME_FACTURE_PAYER_TEXT_VALUE = '';

//   static const HOME_EQUIPEMENT_CONNECTE = 'HOME_EQUIPEMENT_CONNECTE';
//   static String HOME_EQUIPEMENT_CONNECTE_VALUE = '';

//   static const HOME_INTERNET_DETAIL_CURRENT_CONSO =
//       'HOME_INTERNET_DETAIL_CURRENT_CONSO';
//   static String HOME_INTERNET_DETAIL_CURRENT_CONSO_VALUE = '';

//   static const HOME_INTERNET_DETAIL_LAST_CONSO =
//       'HOME_INTERNET_DETAIL_LAST_CONSO';
//   static String HOME_INTERNET_DETAIL_LAST_CONSO_VALUE = '';

//   static const HOME_INTERNET_LAST_REBOOT_ERROR =
//       'HOME_INTERNET_LAST_REBOOT_ERROR';
//   static String HOME_INTERNET_LAST_REBOOT_ERROR_VALUE = '';

//   static const HOME_INTERNET_LAST_REBOOT_SUCCESS =
//       'HOME_INTERNET_LAST_REBOOT_SUCCESS';
//   static String HOME_INTERNET_LAST_REBOOT_SUCCESS_VALUE = '';

//   static const HOME_INTERNET_LAST_REBOOT_DEVICEID =
//       'HOME_INTERNET_LAST_REBOOT_DEVICEID';
//   static String HOME_INTERNET_LAST_REBOOT_DEVICEID_VALUE = '';

//   static const HOME_AVANTAGE_TITRE = 'HOME_AVANTAGE_TITRE';
//   static String HOME_AVANTAGE_TITRE_VALUE = '';

//   static const HOME_AVANTAGE_CODE1 = 'HOME_AVANTAGE_CODE1';
//   static String HOME_AVANTAGE_CODE1_VALUE = '';

//   static const HOME_AVANTAGE_CODE2 = 'HOME_AVANTAGE_CODE2';
//   static String HOME_AVANTAGE_CODE2_VALUE = '';

//   static const HOME_AVANTAGE_CODE3 = 'HOME_AVANTAGE_CODE3';
//   static String HOME_AVANTAGE_CODE3_VALUE = '';

//   static const HOME_AVANTAGE_CODE4 = 'HOME_AVANTAGE_CODE4';
//   static String home_avantage_code4 = '';

//   static const MABOX_NEW_CONNECTION = 'MABOX_NEW_CONNECTION';
//   static String MABOX_NEW_CONNECTION_VALUE = '';

//   static const HOME_CONTRAT_TYPE_PRE = 'HOME_CONTRAT_TYPE_PRE';
//   static String HOME_CONTRAT_TYPE_PRE_VALUE = '';

//   static const HOME_CONTRAT_TYPE_PREPAYER_NOT_AVAILABLE_CHANGER_OFRRE =
//       'HOME_CONTRAT_TYPE_PREPAYER_NOT_AVAILABLE_CHANGER_OFRRE';
//   static String HOME_CONTRAT_TYPE_PREPAYER_NOT_AVAILABLE_CHANGER_OFRRE_VALUE =
//       '';

//   static const HOME_CONTRAT_TYPE_POST = 'HOME_CONTRAT_TYPE_POST';
//   static String HOME_CONTRAT_TYPE_POST_VALUE = '';

//   static const HOME_POSTPAYE_CONTENT_SUSP = 'HOME_POSTPAYE_CONTENT_SUSP';
//   static String HOME_POSTPAYE_CONTENT_SUSP_VALUE = '';

//   static const HOME_POSTPAYE_FACTURE_IMPAYEE = 'HOME_POSTPAYE_FACTURE_IMPAYEE';
//   static String HOME_POSTPAYE_FACTURE_IMPAYEE_VALUE = '';

//   static const HOME_PRETPAYE_CONTENT_EXPIRE = 'HOME_PRETPAYE_CONTENT_EXPIRE';
//   static String HOME_PRETPAYE_CONTENT_EXPIRE_VALUE = '';

//   static const HOME_POSTPAYE_CONTENT_BTN_PAIEFACTURE =
//       'HOME_POSTPAYE_CONTENT_BTN_PAIEFACTURE';
//   static String HOME_POSTPAYE_CONTENT_BTN_PAIEFACTURE_VALUE = '';

//   static const HOME_POPPUP_SAV = 'HOME_POPPUP_SAV';
//   static String HOME_POPPUP_SAV_VALUE = '';

//   static const HOME_POPUP_SAV_EMPTY = 'HOME_POPUP_SAV_EMPTY';
//   static String HOME_POPUP_SAV_EMPTY_VALUE = '';

//   static const HOME_MONWIFI_STATUT_TITRE = 'HOME_MONWIFI_STATUT_TITRE';
//   static String HOME_MONWIFI_STATUT_TITRE_VALUE = '';

//   static const HOME_MONWIFI_NEW_PASSWORD_HINTEXT =
//       'HOME_MONWIFI_NEW_PASSWORD_HINTEXT';
//   static String HOME_MONWIFI_NEW_PASSWORD_HINTEXT_VALUE = '';

//   static const HOME_MONWIFI_ERROR_PASSWORD_HINTEXT =
//       'HOME_MONWIFI_ERROR_PASSWORD_HINTEXT';
//   static String HOME_MONWIFI_ERROR_PASSWORD_HINTEXT_VALUE = '';

//   static const HOME_MONWIFI_CONFIRM_PASSWORD_HINTEXT =
//       'HOME_MONWIFI_CONFIRM_PASSWORD_HINTEXT';
//   static String HOME_MONWIFI_CONFIRM_PASSWORD_HINTEXT_VALUE = '';

//   static const HOME_MONWIFI_ERROR_CONFIRM_PASSWORD_HINTEXT =
//       'HOME_MONWIFI_ERROR_CONFIRM_PASSWORD_HINTEXT';
//   static String HOME_MONWIFI_ERROR_CONFIRM_PASSWORD_HINTEXT_VALUE = '';

//   static const HOME_MONWIFI_BTN_MODIF = 'HOME_MONWIFI_BTN_MODIF';
//   static String HOME_MONWIFI_BTN_MODIF_VALUE = '';

//   static const HOME_MONWIFI_NAME_WIFI_HINTEXT =
//       'HOME_MONWIFI_NAME_WIFI_HINTEXT';
//   static String HOME_MONWIFI_NAME_WIFI_HINTEXT_VALUE = '';

//   static const HOME_MONWIFI_ERROR_NAME_WIFI_HINTEXT =
//       'HOME_MONWIFI_ERROR_NAME_WIFI_HINTEXT';
//   static String HOME_MONWIFI_ERROR_NAME_WIFI_HINTEXT_VALUE = '';

//   static const POPUP_DECONNECTION = 'POPUP_DECONNECTION';
//   static String POPUP_DECONNECTION_VALUE = '';
//   static String POPUP_DECONNECTION_TITRE = '';

//   static const INFO_COMPLEMENTAIRE = 'INFO_COMPLEMENTAIRE';
//   static String INFO_COMPLEMENTAIRE_VALUE = '';

//   static const TESTDEBIT_RECEPTION = 'TESTDEBIT_RECEPTION';
//   static String TESTDEBIT_RECEPTION_VALUE = '';

//   static const TESTDEBIT_HISTORIQUE = 'TESTDEBIT_HISTORIQUE';
//   static String TESTDEBIT_HISTORIQUE_VALUE = '';

//   static const TESTDEBIT_BTN_RELANCE = 'TESTDEBIT_BTN_RELANCE';
//   static String TESTDEBIT_BTN_RELANCE_VALUE = '';

//   static const TESTDEBIT_EQUIPEMENT = 'TESTDEBIT_EQUIPEMENT';
//   static String TESTDEBIT_EQUIPEMENT_VALUE = '';

//   static const TESTDEBIT_HISTORIQUE_DATA_EMPTY =
//       'TESTDEBIT_HISTORIQUE_DATA_EMPTY';
//   static String TESTDEBIT_HISTORIQUE_DATA_EMPTY_VALUE = '';

//   static const TESTDEBIT_HISTORIQUE_DURETEST = 'TESTDEBIT_HISTORIQUE_DURETEST';
//   static String TESTDEBIT_HISTORIQUE_DURETEST_VALUE = '';

//   static const TESTDEBIT_HISTORIQUE_DATETEST = 'TESTDEBIT_HISTORIQUE_DATETEST';
//   static String TESTDEBIT_HISTORIQUE_DATETEST_VALUE = '';

//   static const PROFIL_APPBAR_TITRE = 'PROFIL_APPBAR_TITRE';
//   static String PROFIL_APPBAR_TITRE_VALUE = '';

//   static const PROFIL_INFO_PERSONNEL = 'PROFIL_INFO_PERSONNEL';
//   static String PROFIL_INFO_PERSONNEL_VALUE = '';

//   static const PROFIL_INFO_CONTACT = 'PROFIL_INFO_CONTACT';
//   static String PROFIL_INFO_CONTACT_VALUE = '';

//   static const PROFIL_INFO_EMAIL = 'PROFIL_INFO_EMAIL';
//   static String PROFIL_INFO_EMAIL_VALUE = '';

//   static const PROFIL_INFO_CONTACT_VERIF = 'PROFIL_INFO_CONTACT_VERIF';
//   static String PROFIL_INFO_CONTACT_VERIF_VALUE = '';

//   static const PROFIL_INFO_EMAIL_VERIF = 'PROFIL_INFO_EMAIL_VERIF';
//   static String PROFIL_INFO_EMAIL_VERIF_VALUE = '';

//   static const PROFIL_INFO_EMAIL_NONVERIF = 'PROFIL_INFO_EMAIL_NONVERIF';
//   static String PROFIL_INFO_EMAIL_NONVERIF_VALUE = '';

//   static const ABOUT_US_APPBAR_TITLE = 'ABOUT_US_APPBAR_TITLE';
//   static String ABOUT_US_APPBAR_TITLE_VALUE = '';

//   static const ABOUT_US_APP_TITLE = 'ABOUT_US_APP_TITLE';
//   static String ABOUT_US_APP_TITLE_VALUE = '';

//   static const ABOUT_US_ORGANISATION_TITLE = 'ABOUT_US_ORGANISATION_TITLE';
//   static String ABOUT_US_ORGANISATION_TITLE_VALUE = '';

//   static const ABOUT_US_APP_DESCRIP_1 = 'ABOUT_US_APP_DESCRIP_1';
//   static String ABOUT_US_APP_DESCRIP_1_VALUE = '';

//   static const ABOUT_US_APP_DESCRIP_2 = 'ABOUT_US_APP_DESCRIP_2';
//   static String ABOUT_US_APP_DESCRIP_2_VALUE = '';

//   static const ABOUT_US_APP_DESCRIP_3 = 'ABOUT_US_APP_DESCRIP_3';
//   static String ABOUT_US_APP_DESCRIP_3_VALUE = '';

//   static const CHATBOT_TEXTFIELD_HINTEXT = 'CHATBOT_TEXTFIELD_HINTEXT';
//   static String CHATBOT_TEXTFIELD_HINTEXT_VALUE = '';

//   static const CONTRAT_STEP4_PHOTO_UPDATE_TITRE =
//       'CONTRAT_STEP4_PHOTO_UPDATE_TITRE';
//   static String CONTRAT_STEP4_PHOTO_UPDATE_TITRE_VALUE = '';

//   static const CONTRAT_STEP4_PHOTO_TAKE_TITRE =
//       'CONTRAT_STEP4_PHOTO_TAKE_TITRE';
//   static String CONTRAT_STEP4_PHOTO_TAKE_TITRE_VALUE = '';

//   static const CONTRAT_RATTACHEMENT_CONGRAT_TITLE =
//       'CONTRAT_RATTACHEMENT_CONGRAT_TITLE';
//   static String CONTRAT_RATTACHEMENT_CONGRAT_TITLE_VALUE = '';

//   static const CONTRAT_RATTACHEMENT_CONGRAT_DESCRIP =
//       'CONTRAT_RATTACHEMENT_CONGRAT_DESCRIP';
//   static String CONTRAT_RATTACHEMENT_CONGRAT_DESCRIP_VALUE = '';

//   static const CONTRAT_STEP1_HEADER_TITRE = 'CONTRAT_STEP1_HEADER_TITRE';
//   static String CONTRAT_STEP1_HEADER_TITRE_VALUE = '';

//   static const CONTRAT_STEP1_HEADER_DESC = 'CONTRAT_STEP1_HEADER_DESC';
//   static String CONTRAT_STEP1_HEADER_DESC_VALUE = '';

//   static const CONTRAT_STEP1_TEXTFIELD_TITRE_ND =
//       'CONTRAT_STEP1_TEXTFIELD_TITRE_ND';
//   static String CONTRAT_STEP1_TEXTFIELD_TITRE_ND_VALUE = '';

//   static const CONTRAT_STEP1_TEXTFIELD_HINTTEXT =
//       'CONTRAT_STEP1_TEXTFIELD_HINTTEXT';
//   static String CONTRAT_STEP1_TEXTFIELD_HINTTEXT_VALUE = '';

//   static const CONTRAT_STEP1_TEXTFIELD_ERROR_ND =
//       'CONTRAT_STEP1_TEXTFIELD_ERROR_ND';
//   static String CONTRAT_STEP1_TEXTFIELD_ERROR_ND_VALUE = '';

//   static const CONTRAT_STEP3_TEXTFIELD_ABONNEMENT_HINTTEXT =
//       'CONTRAT_STEP3_TEXTFIELD_ABONNEMENT_HINTTEXT';
//   static String CONTRAT_STEP3_TEXTFIELD_ABONNEMENT_HINTTEXT_VALUE = '';

//   static const CONTRAT_STEP3_TEXTFIELD_ABONNEMENT_ERROR =
//       'CONTRAT_STEP3_TEXTFIELD_ABONNEMENT_ERROR';
//   static String CONTRAT_STEP3_TEXTFIELD_ABONNEMENT_ERROR_VALUE = '';

//   static const CONTRAT_STEP3_ADDRESS_ABONNEMENT_TITLE =
//       'CONTRAT_STEP3_ADDRESS_ABONNEMENT_TITLE';
//   static String CONTRAT_STEP3_ADDRESS_ABONNEMENT_TITLE_VALUE = '';

//   static const CONTRAT_STEP3_TYPE_ABONNEMENT_TITLE =
//       'CONTRAT_STEP3_TYPE_ABONNEMENT_TITLE';
//   static String CONTRAT_STEP3_TYPE_ABONNEMENT_TITLE_VALUE = '';

//   static const CONTRAT_STEP3_NDESIGNATION_TITLE =
//       'CONTRAT_STEP3_NDESIGNATION_TITLE';
//   static String CONTRAT_STEP3_NDESIGNATION_TITLE_VALUE = '';

//   static const CONTRAT_STEP3_FORMULE_TITLE = 'CONTRAT_STEP3_FORMULE_TITLE';
//   static String CONTRAT_STEP3_FORMULE_TITLE_VALUE = '';

//   static const CONTRAT_STEP3_MYACCOUNT_TITLE = 'CONTRAT_STEP3_MYACCOUNT_TITLE';
//   static String CONTRAT_STEP3_MYACCOUNT_TITLE_VALUE = '';

//   static const CONTRAT_STEP3_TITLE = 'CONTRAT_STEP3_TITLE';
//   static String CONTRAT_STEP3_TITLE_VALUE = '';

//   static const CONTRAT_STEP2_OTP_TITLE = 'CONTRAT_STEP2_OTP_TITLE';
//   static String CONTRAT_STEP2_OTP_TITLE_VALUE = '';

//   static const CONTRAT_STEP2_OTP_EXPIRE_TITLE =
//       'CONTRAT_STEP2_OTP_EXPIRE_TITLE';
//   static String CONTRAT_STEP2_OTP_EXPIRE_TITLE_VALUE = '';

//   static const CONTRAT_STEP2_BTN_RATTACH_MANUEL =
//       'CONTRAT_STEP2_BTN_RATTACH_MANUEL';
//   static String CONTRAT_STEP2_BTN_RATTACH_MANUEL_VALUE = '';

//   static const RATTACHEMENT_APPBAR_TITLE = 'RATTACHEMENT_APPBAR_TITLE';
//   static String RATTACHEMENT_APPBAR_TITLE_VALUE = '';

//   static const RATTACHEMENT_APPBAR_DESC = 'RATTACHEMENT_APPBAR_DESC';
//   static String RATTACHEMENT_APPBAR_DESC_VALUE = '';

//   static const RATTACHEMENT_CANCEL = 'RATTACHEMENT_CANCEL';
//   static String RATTACHEMENT_CANCEL_VALUE = '';

//   static const GEOLOC_POPUP_TITRE = 'GEOLOC_POPUP_TITRE';
//   static String GEOLOC_POPUP_TITRE_VALUE = '';

//   static const GEOLOC_POPUP_VILLE = 'GEOLOC_POPUP_VILLE';
//   static String GEOLOC_POPUP_VILLE_VALUE = '';

//   static const GEOLOC_POPUP_COMMUNE = 'GEOLOC_POPUP_COMMUNE';
//   static String GEOLOC_POPUP_COMMUNE_VALUE = '';

//   static const GEOLOC_POPUP_QUARTIER = 'GEOLOC_POPUP_QUARTIER';
//   static String GEOLOC_POPUP_QUARTIER_VALUE = '';

//   static const GEOLOC_POPUP_COORDONNE = 'GEOLOC_POPUP_COORDONNE';
//   static String GEOLOC_POPUP_COORDONNE_VALUE = '';
// //////////////////////////////////////////////////////////////////
//   static const OTP_VERIF_EMAIL_SENDEMAIL_TEXT =
//       'OTP_VERIF_EMAIL_SENDEMAIL_TEXT';
//   static String OTP_VERIF_EMAIL_SENDEMAIL_TEXT_VALUE = '';

//   static const SCAN_ADDRESMAC_TEXT = 'SCAN_ADDRESMAC_TEXT';
//   static String SCAN_ADDRESMAC_TEXT_VALUE = '';

//   static const SCAN_BTN = 'SCAN_BTN';
//   static String SCAN_BTN_VALUE = '';

//   static const TEXTFIELD_MAC_HINTEXT = 'TEXTFIELD_MAC_HINTEXT';
//   static String TEXTFIELD_MAC_HINTEXT_VALUE = '';

//   static const TEXTFIELD_MAC_ERROR = 'TEXTFIELD_MAC_ERROR';
//   static String TEXTFIELD_MAC_ERROR_VALUE = '';

//   static const SCAN_SUBTITLE_ND_TEXT = 'SCAN_SUBTITLE_ND_TEXT';
//   static String SCAN_SUBTITLE_ND_TEXT_VALUE = '';

//   static const TEXTFIELD_ND_HINTEXT = 'TEXTFIELD_ND_HINTEXT';
//   static String TEXTFIELD_ND_HINTEXT_VALUE = '';

//   static const TEXTFIELD_ND_ERROR = 'TEXTFIELD_ND_ERROR';
//   static String TEXTFIELD_ND_ERROR_VALUE = '';

//   static const SCAN_SUBTITLE_MAC_TEXT = 'SCAN_SUBTITLE_MAC_TEXT';
//   static String SCAN_SUBTITLE_MAC_TEXT_VALUE = '';

//   static const TEXTFIELD_LOGIN_HINTEXT = 'TEXTFIELD_LOGIN_HINTEXT';
//   static String TEXTFIELD_LOGIN_HINTEXT_VALUE = '';

//   static const TEXTFIELD_LOGIN_ERROR = 'TEXTFIELD_LOGIN_ERROR';
//   static String TEXTFIELD_LOGIN_ERROR_VALUE = '';

//   static const SCAN_SUBTITLE_LOGIN_TEXT = 'SCAN_SUBTITLE_LOGIN_TEXT';
//   static String SCAN_SUBTITLE_LOGIN_TEXT_VALUE = '';

//   static const FORM_SCAN_TITRE_1 = 'FORM_SCAN_TITRE_1';
//   static String FORM_SCAN_TITRE_1_VALUE = '';

//   static const FORM_SCAN_TITRE_2 = 'FORM_SCAN_TITRE_2';
//   static String FORM_SCAN_TITRE_2_VALUE = '';

//   static const FORM_SCAN_TITRE_3 = 'FORM_SCAN_TITRE_3';
//   static String FORM_SCAN_TITRE_3_VALUE = '';

//   static const SCAN_PAGE_TEXT = 'SCAN_PAGE_TEXT';
//   static String SCAN_PAGE_TEXT_VALUE = '';

//   static const POPUP_EMAIL_CONFIRM = 'POPUP_EMAIL_CONFIRM';
//   static String POPUP_EMAIL_CONFIRM_VALUE = '';

//   static const FACTURE_CONTRAT_POSTPAYER_TITRE =
//       'FACTURE_CONTRAT_POSTPAYER_TITRE';
//   static String FACTURE_CONTRAT_POSTPAYER_TITRE_VALUE = '';

//   static const FACTURE_CONTRAT_PREPAYER_TITRE =
//       'FACTURE_CONTRAT_PREPAYER_TITRE';
//   static String FACTURE_CONTRAT_PREPAYER_TITRE_VALUE = '';

//   static const HOME_DIAGNOSTIC_HEADER = 'HOME_DIAGNOSTIC_HEADER';
//   static String HOME_DIAGNOSTIC_HEADER_VALUE = '';

//   static const HOME_EQUIPEMENT_EMPTY = 'HOME_EQUIPEMENT_EMPTY';
//   static String HOME_EQUIPEMENT_EMPTY_VALUE = '';

//   static const HOME_EQUIPEMENT_TEXT = 'HOME_EQUIPEMENT_TEXT';
//   static String HOME_EQUIPEMENT_TEXT_VALUE = '';

//   static const HOME_CONNECTE_TEXT = 'HOME_CONNECTE_TEXT';
//   static String HOME_CONNECTE_TEXT_VALUE = '';

//   static const HOME_DATA_INTERNET_EMPTY = 'HOME_DATA_INTERNET_EMPTY';
//   static String HOME_DATA_INTERNET_EMPTY_VALUE = '';

//   static const HOME_TVPASINCLUS = 'HOME_TVPASINCLUS';
//   static String HOME_TVPASINCLUS_VALUE = '';

//   static const HOME_STAT_VOLUME_CONSOMME = 'HOME_STAT_VOLUME_CONSOMME';
//   static String HOME_STAT_VOLUME_CONSOMME_VALUE = '';

//   static const HOME_STAT_HEQUIPEMENT = 'HOME_STAT_HEQUIPEMENT';
//   static String HOME_STAT_HEQUIPEMENT_VALUE = '';

//   static const HOME_SETTING_PANEL = 'HOME_SETTING_PANEL';
//   static String HOME_SETTING_PANEL_VALUE = '';

//   static const HOME_SETTING_PANEL_INFOPROFIL = 'HOME_SETTING_PANEL_INFOPROFIL';
//   static String HOME_SETTING_PANEL_INFOPROFIL_VALUE = '';

//   static const HOME_SETTING_PANEL_LIST_NOTIFS =
//       'HOME_SETTING_PANEL_LIST_NOTIFS';
//   static String HOME_SETTING_PANEL_LIST_NOTIFS_VALUE = '';

//   static const HOME_SETTING_PANEL_LINK_APP = 'HOME_SETTING_PANEL_LINK_APP';
//   static String HOME_SETTING_PANEL_LINK_APP_VALUE = '';
//   static String HOME_SETTING_PANEL_LINK_APP_TITRE = '';

//   static const HOME_SETTING_PANEL_ABOUTUS = 'HOME_SETTING_PANEL_ABOUTUS';
//   static String HOME_SETTING_PANEL_ABOUTUS_VALUE = '';

//   static const HOME_TABBAR = 'HOME_TABBAR';
//   static String HOME_TABBAR_VALUE = '';

//   static const MABOX_TABBAR = 'MABOX_TABBAR';
//   static String MABOX_TABBAR_VALUE = '';

//   static const MESDEMANDE_TABBAR = 'MESDEMANDE_TABBAR';
//   static String MESDEMANDE_TABBAR_VALUE = '';

//   static const COMMUNAUTE_FIBRE_TABBAR = 'COMMUNAUTE_FIBRE_TABBAR';
//   static String COMMUNAUTE_FIBRE_TABBAR_VALUE = '';

//   static const MA_MAISON_TABBAR = 'MA_MAISON_TABBAR';
//   static String MA_MAISON_TABBAR_VALUE = '';

//   static const UNAUTHENTICATED_TEXT = 'UNAUTHENTICATED_TEXT';
//   static String UNAUTHENTICATED_TEXT_VALUE = '';

//   static const DIALOG_STATUS_CLIENT_FIBRE_TITLE =
//       'DIALOG_STATUS_CLIENT_FIBRE_TITLE';
//   static String DIALOG_STATUS_CLIENT_FIBRE_TITLE_VALUE = '';

//   static const DIALOG_STATUS_CLIENT_FIBRE_DESC =
//       'DIALOG_STATUS_CLIENT_FIBRE_DESC';
//   static String DIALOG_STATUS_CLIENT_FIBRE_DESC_VALUE = '';

//   static const DIALOG_FIRST_VIEW_TITLE_POPUP = 'DIALOG_FIRST_VIEW_TITLE_POPUP';
//   static String DIALOG_FIRST_VIEW_TITLE_POPUP_VALUE = '';

//   static const DIALOG_FIRST_VIEW_TITLE_TEXT = 'DIALOG_FIRST_VIEW_TITLE_TEXT';
//   static String DIALOG_FIRST_VIEW_TITLE_TEXT_VALUE = '';

//   static const DIALOG_FIRST_VIEW_SUBTITLE_TEXT =
//       'DIALOG_FIRST_VIEW_SUBTITLE_TEXT';
//   static String DIALOG_FIRST_VIEW_SUBTITLE_TEXT_VALUE = '';

//   static const DIALOG_FIRST_VIEW_DESC_TEXT = 'DIALOG_FIRST_VIEW_DESC_TEXT';
//   static String DIALOG_FIRST_VIEW_DESC_TEXT_VALUE = '';

//   static const DIALOG_UPDATE_APP_NAME = 'DIALOG_UPDATE_APP_NAME';
//   static String DIALOG_UPDATE_APP_NAME_VALUE = '';

//   static const DIALOG_UPDATE_APP_NAME_GROUPE = 'DIALOG_UPDATE_APP_NAME_GROUPE';
//   static String DIALOG_UPDATE_APP_NAME_GROUPE_VALUE = '';

//   static const DIALOG_UPDATE_APP_NAME_VERSION =
//       'DIALOG_UPDATE_APP_NAME_VERSION';
//   static String DIALOG_UPDATE_APP_NAME_VERSION_VALUE = '';

//   static const DIALOG_UPDATE_APP_TEXT = 'DIALOG_UPDATE_APP_TEXT';
//   static String DIALOG_UPDATE_APP_TEXT_VALUE = '';

//   static const DIALOG_UPDATE_APP_NEW_FEATURE_TEXT =
//       'DIALOG_UPDATE_APP_NEW_FEATURE_TEXT';
//   static String DIALOG_UPDATE_APP_NEW_FEATURE_TEXT_VALUE = '';

//   static const DIALOG_UPDATE_APP_NOUVEAUTES = 'DIALOG_UPDATE_APP_NOUVEAUTES';
//   static String DIALOG_UPDATE_APP_NOUVEAUTES_VALUE = '';

//   static const DIALOG_UPDATE_NOW = 'DIALOG_UPDATE_NOW';
//   static String DIALOG_UPDATE_NOW_VALUE = '';

//   static const DIALOG_UPDATE_LATER = 'DIALOG_UPDATE_LATER';
//   static String DIALOG_UPDATE_LATER_VALUE = '';

//   static const DOMOTIQUE_PAGE_LAISSER_PASER_FIDEL =
//       'DOMOTIQUE_PAGE_LAISSER_PASER_FIDEL';
//   static String DOMOTIQUE_PAGE_LAISSER_PASER_FIDEL_VALUE = '';

//   static const DOMOTIQUE_PAGE_TITLE = 'DOMOTIQUE_PAGE_TITLE';
//   static String DOMOTIQUE_PAGE_TITLE_VALUE = '';

//   static const DOMOTIQUE_PAGE_SUBTITLE = 'DOMOTIQUE_PAGE_SUBTITLE';
//   static String DOMOTIQUE_PAGE_SUBTITLE_VALUE = '';

//   static const DOMOTIQUE_PAGE_PRESENTATION_TITLE =
//       'DOMOTIQUE_PAGE_PRESENTATION_TITLE';
//   static String DOMOTIQUE_PAGE_PRESENTATION_TITLE_VALUE = '';

//   static const DOMOTIQUE_PAGE_ELIGIBILITE_POPUP_TITLE =
//       'DOMOTIQUE_PAGE_ELIGIBILITE_POPUP_TITLE';
//   static String DOMOTIQUE_PAGE_ELIGIBILITE_POPUP_TITLE_VALUE = '';

//   static const DOMOTIQUE_PAGE_ELIGIBILITE_POPUP_SUBTITLE =
//       'DOMOTIQUE_PAGE_ELIGIBILITE_POPUP_SUBTITLE';
//   static String DOMOTIQUE_PAGE_ELIGIBILITE_POPUP_SUBTITLE_VALUE = '';

//   static const DOMOTIQUE_PAGE_BTN_ELIGIBILITE_SIGNIN_DOMOTIQUE =
//       'DOMOTIQUE_PAGE_BTN_ELIGIBILITE_SIGNIN_DOMOTIQUE';
//   static String DOMOTIQUE_PAGE_BTN_ELIGIBILITE_SIGNIN_DOMOTIQUE_VALUE = '';

//   static const DOMOTIQUE_PAGE_BTN_ELIGIBILITE_PAIE_FACTURE =
//       'DOMOTIQUE_PAGE_BTN_ELIGIBILITE_PAIE_FACTURE';
//   static String DOMOTIQUE_PAGE_BTN_ELIGIBILITE_PAIE_FACTURE_VALUE = '';

//   static const DOMOTIQUE_PAGE_ELIGIBILITE_FACTURE_IMPAYER_TITLE =
//       'DOMOTIQUE_PAGE_ELIGIBILITE_FACTURE_IMPAYER_TITLE';
//   static String DOMOTIQUE_PAGE_ELIGIBILITE_FACTURE_IMPAYER_TITLE_VALUE = '';

//   static const DOMOTIQUE_PAGE_ELIGIBILITE_FACTURE_IMPAYER_INTERNET_TITLE =
//       'DOMOTIQUE_PAGE_ELIGIBILITE_FACTURE_IMPAYER_INTERNET_TITLE';
//   static String
//       DOMOTIQUE_PAGE_ELIGIBILITE_FACTURE_IMPAYER_INTERNET_TITLE_VALUE = '';

//   static const DOMOTIQUE_PAGE_ELIGIBILITE_FACTURE_IMPAYER_INTERNET_DESC =
//       'DOMOTIQUE_PAGE_ELIGIBILITE_FACTURE_IMPAYER_INTERNET_DESC';
//   static String DOMOTIQUE_PAGE_ELIGIBILITE_FACTURE_IMPAYER_INTERNET_DESC_VALUE =
//       '';

//   static const DOMOTIQUE_PAGE_PRESENTATION_SUBTITLE =
//       'DOMOTIQUE_PAGE_PRESENTATION_SUBTITLE';
//   static String DOMOTIQUE_PAGE_PRESENTATION_SUBTITLE_VALUE = '';

//   //CHANGER_OFFRE_ERROR_TEXT

//   static const CHANGER_OFFRE_ERROR_TEXT = 'CHANGER_OFFRE_ERROR_TEXT';
//   static String CHANGER_OFFRE_ERROR_TEXT_VALUE = '';

//   static const UPDATE_APP_PROFIL_TEXT = 'UPDATE_APP_PROFIL_TEXT';
//   static String UPDATE_APP_PROFIL_TEXT_VALUE = '';

//   static const PROFIL_UPDATE_DISPONIBLE = 'PROFIL_UPDATE_DISPONIBLE';
//   static String PROFIL_UPDATE_DISPONIBLE_VALUE = '';

//   static const PROFIL_UPDATE_APPBAR_TITLE = 'PROFIL_UPDATE_APPBAR_TITLE';
//   static String PROFIL_UPDATE_APPBAR_TITLE_VALUE = '';

//   static const PLATFORM_DIALOG_STATUS_NOT_AVAILABLE =
//       'PLATFORM_DIALOG_STATUS_NOT_AVAILABLE';
//   static String PLATFORM_DIALOG_STATUS_NOT_AVAILABLE_VALUE = '';

//   static const PLATFORM_DIALOG_PAYER_ICI = 'PLATFORM_DIALOG_PAYER_ICI';
//   static String PLATFORM_DIALOG_PAYER_ICI_VALUE = '';

//   static const PLATFORM_DIALOG_ELIGIBILITE_FIBRE_AVAILABLE =
//       'PLATFORM_DIALOG_ELIGIBILITE_FIBRE_AVAILABLE';
//   static String PLATFORM_DIALOG_ELIGIBILITE_FIBRE_AVAILABLE_VALUE = '';

//   static const PLATFORM_DIALOG_ELIGIBILITE_FIBRE_NOTAVAILABLE =
//       'PLATFORM_DIALOG_ELIGIBILITE_FIBRE_NOTAVAILABLE';
//   static String PLATFORM_DIALOG_ELIGIBILITE_FIBRE_NOTAVAILABLE_VALUE = '';

//   static const PLATFORM_DIALOG_ELIGIBILITE_MARKET_ONLINE =
//       'PLATFORM_DIALOG_ELIGIBILITE_MARKET_ONLINE';
//   static String PLATFORM_DIALOG_ELIGIBILITE_MARKET_ONLINE_VALUE = '';

//   static const SIGNALER_TEL = 'SIGNALER_TEL';
//   static String SIGNALER_TEL_VALUE = '';

//   static const HOME_SETTING_PANEL_ABONNEMENT = 'HOME_SETTING_PANEL_ABONNEMENT';
//   static String HOME_SETTING_PANEL_ABONNEMENT_VALUE = '';

//   ////
//   /// UBERISATION
//   ///

//   static const UBER_DIAGNOSTIC_TEXT = 'UBER_DIAGNOSTIC_TEXT';
//   static String UBER_DIAGNOSTIC_TEXT_VALUE = '';

//   static const UBER_DISPONIBILITE_PAGE_TITRE = 'UBER_DISPONIBILITE_PAGE_TITRE';
//   static String UBER_DISPONIBILITE_PAGE_TITRE_VALUE = '';

//   static const UBER_DISPONIBILITE_FORM_TITLE = 'UBER_DISPONIBILITE_FORM_TITLE';
//   static String UBER_DISPONIBILITE_FORM_TITLE_VALUE = '';

//   static const UBER_DISPONIBILITE_FORM_MOTIF = 'UBER_DISPONIBILITE_FORM_MOTIF';
//   static String UBER_DISPONIBILITE_FORM_MOTIF_VALUE = '';

//   static const UBER_DISPONIBILITE_FORM_MOTIF_DESC =
//       'UBER_DISPONIBILITE_FORM_MOTIF_DESC';
//   static String UBER_DISPONIBILITE_FORM_MOTIF_DESC_VALUE = '';

//   static const UBER_DISPONIBILITE_FORM_COMMENTAIRE =
//       'UBER_DISPONIBILITE_FORM_COMMENTAIRE';
//   static String UBER_DISPONIBILITE_FORM_COMMENTAIRE_VALUE = '';

//   static const UBER_DISPONIBILITE_BTN_LOCATE = 'UBER_DISPONIBILITE_BTN_LOCATE';
//   static String UBER_DISPONIBILITE_BTN_LOCATE_VALUE = '';

//   static const UBER_SEARCH_ADDRESS_TITLE = 'UBER_SEARCH_ADDRESS_TITLE';
//   static String UBER_SEARCH_ADDRESS_TITLE_VALUE = '';

//   static const UBER_ADDRESS_SUBTILE = 'UBER_ADDRESS_SUBTILE';
//   static String UBER_ADDRESS_SUBTILE_VALUE = '';

//   static const UBER_SEARCH_ADDRESS_BTN = 'UBER_SEARCH_ADDRESS_BTN';
//   static String UBER_SEARCH_ADDRESS_BTN_VALUE = '';

//   static const UBER_TECHNICIAN_SEARCH = 'UBER_TECHNICIAN_SEARCH';
//   static String UBER_TECHNICIAN_SEARCH_VALUE = '';

//   static const UBER_ADD_DISPONIBILITE_PAGE_TITLE =
//       'UBER_ADD_DISPONIBILITE_PAGE_TITLE';
//   static String UBER_ADD_DISPONIBILITE_PAGE_TITLE_VALUE = '';

//   static const UBER_ADD_DISPONIBILITE_TITLE = 'UBER_ADD_DISPONIBILITE_TITLE';
//   static String UBER_ADD_DISPONIBILITE_TITLE_VALUE = '';

//   static const UBER_ADD_DISPONIBILITE_NOW = 'UBER_ADD_DISPONIBILITE_NOW';
//   static String UBER_ADD_DISPONIBILITE_NOW_VALUE = '';
//   static String UBER_ADD_DISPONIBILITE_NOW_DESC_VALUE = '';

//   static const UBER_ADD_DISPONIBILITE_ANOTHER =
//       'UBER_ADD_DISPONIBILITE_ANOTHER';
//   static String UBER_ADD_DISPONIBILITE_ANOTHER_VALUE = '';

//   static const UBER_ADD_DISPONIBILITE_AMOUNT_TITLE =
//       'UBER_ADD_DISPONIBILITE_AMOUNT_TITLE';
//   static String UBER_ADD_DISPONIBILITE_AMOUNT_TITLE_VALUE = '';

//   static const UBER_ADD_DISPONIBILITE_AMOUNT_FREE =
//       'UBER_ADD_DISPONIBILITE_AMOUNT_FREE';
//   static String UBER_ADD_DISPONIBILITE_AMOUNT_FREE_VALUE = '';

//   static const UBER_ADD_DISPONIBILITE_BTN = 'UBER_ADD_DISPONIBILITE_BTN';
//   static String UBER_ADD_DISPONIBILITE_BTN_VALUE = '';

//   static const UBER_TECHNICIAN_NOT_FOUND_ERROR_TITLE =
//       'UBER_TECHNICIAN_NOT_FOUND_ERROR_TITLE';
//   static String UBER_TECHNICIAN_NOT_FOUND_ERROR_TITLE_VALUE = '';

//   static const UBER_TECHNICIAN_NOT_FOUND_ERROR_DESC =
//       'UBER_TECHNICIAN_NOT_FOUND_ERROR_DESC';
//   static String UBER_TECHNICIAN_NOT_FOUND_ERROR_DESC_VALUE = '';

//   static const UBER_TECHNICIAN_NOT_FOUND_BTN_PROPOSITION =
//       'UBER_TECHNICIAN_NOT_FOUND_BTN_PROPOSITION';
//   static String UBER_TECHNICIAN_NOT_FOUND_BTN_PROPOSITION_VALUE = '';

//   static const UBER_TECHNICIAN_NOT_FOUND_PROPOSITION_TITLE =
//       'UBER_TECHNICIAN_NOT_FOUND_PROPOSITION_TITLE';
//   static String UBER_TECHNICIAN_NOT_FOUND_PROPOSITION_TITLE_VALUE = '';

//   static const UBER_TECHNICIAN_NOT_FOUND_PROPOSITION_SUBTITLE =
//       'UBER_TECHNICIAN_NOT_FOUND_PROPOSITION_SUBTITLE';
//   static String UBER_TECHNICIAN_NOT_FOUND_PROPOSITION_SUBTITLE_VALUE = '';

//   static const UBER_TECHNICIAN_FOUND_TITLE = 'UBER_TECHNICIAN_FOUND_TITLE';
//   static String UBER_TECHNICIAN_FOUND_TITLE_VALUE = '';

//   static const UBER_TECHNICIAN_FOUND_PRESTATION_TITLE =
//       'UBER_TECHNICIAN_FOUND_PRESTATION_TITLE';
//   static String UBER_TECHNICIAN_FOUND_PRESTATION_TITLE_VALUE = '';

//   static const UBER_PAIEMENT_PAGE_TITLE = 'UBER_PAIEMENT_PAGE_TITLE';
//   static String UBER_PAIEMENT_PAGE_TITLE_VALUE = '';

//   static const UBER_PAIEMENT_TITLE = 'UBER_PAIEMENT_TITLE';
//   static String UBER_PAIEMENT_TITLE_VALUE = '';

//   static const UBER_PAIEMENT_HINTEXT_NUMBER = 'UBER_PAIEMENT_HINTEXT_NUMBER';
//   static String UBER_PAIEMENT_HINTEXT_NUMBER_VALUE = '';

//   static const UBER_PAIEMENT_BTN = 'UBER_PAIEMENT_BTN';
//   static String UBER_PAIEMENT_BTN_VALUE = '';

//   static const UBER_PAIEMENT_OTP_PAGE_TITLE = 'UBER_PAIEMENT_OTP_PAGE_TITLE';
//   static String UBER_PAIEMENT_OTP_PAGE_TITLE_VALUE = '';

//   static const UBER_PAIEMENT_OTP_TITLE = 'UBER_PAIEMENT_OTP_TITLE';
//   static String UBER_PAIEMENT_OTP_TITLE_VALUE = '';

//   static const UBER_PAIEMENT_OTP_BTN_CONFIRM = 'UBER_PAIEMENT_OTP_BTN_CONFIRM';
//   static String UBER_PAIEMENT_OTP_BTN_CONFIRM_VALUE = '';

//   static const UBER_CONGRAT_TITLE = 'UBER_CONGRAT_TITLE';
//   static String UBER_CONGRAT_TITLE_VALUE = '';

//   static const UBER_RETOUR_MENU = 'UBER_RETOUR_MENU';
//   static String UBER_RETOUR_MENU_VALUE = '';

//   static const UBER_SUIVI_TRAJET_PAGE_TITLE = 'UBER_SUIVI_TRAJET_PAGE_TITLE';
//   static String UBER_SUIVI_TRAJET_PAGE_TITLE_VALUE = '';

//   static const UBER_ANNULER_COMMAND = 'UBER_ANNULER_COMMAND';
//   static String UBER_ANNULER_COMMAND_VALUE = '';

//   static const UBER_NOTATION_TITLE = 'UBER_NOTATION_TITLE';
//   static String UBER_NOTATION_TITLE_VALUE = '';

//   static const UBER_NOTATION_SUBTITLE = 'UBER_NOTATION_SUBTITLE';
//   static String UBER_NOTATION_SUBTITLE_VALUE = '';

//   static const UBER_POPUP_AUTRE_RENDEZ_VOUS = 'UBER_POPUP_AUTRE_RENDEZ_VOUS';
//   static String UBER_POPUP_AUTRE_RENDEZ_VOUS_VALUE = '';

//   static const UBER_NOTATION_FIN_INTERVENTION_TITLE =
//       'UBER_NOTATION_FIN_INTERVENTION_TITLE';
//   static String UBER_NOTATION_FIN_INTERVENTION_TITLE_VALUE = '';

//   static const UBER_NOTATION_HINTEXT_DESC = 'UBER_NOTATION_HINTEXT_DESC';
//   static String UBER_NOTATION_HINTEXT_DESC_VALUE = '';

//   static const UBER_NOTATION_QUESTION_1 = 'UBER_NOTATION_QUESTION_1';
//   static String UBER_NOTATION_QUESTION_1_VALUE = '';

//   static const UBER_NOTATION_QUESTION_2 = 'UBER_NOTATION_QUESTION_2';
//   static String UBER_NOTATION_QUESTION_2_VALUE = '';

//   static const UBER_NOTATION_QUESTION_3 = 'UBER_NOTATION_QUESTION_3';
//   static String UBER_NOTATION_QUESTION_3_VALUE = '';

//   static const UBER_NOTATION_QUESTION_4 = 'UBER_NOTATION_QUESTION_4';
//   static String UBER_NOTATION_QUESTION_4_VALUE = '';

//   static const UBER_NOTATION_QUESTION_5 = 'UBER_NOTATION_QUESTION_5';
//   static String UBER_NOTATION_QUESTION_5_VALUE = '';

//   static const UBER_TRACKING_PAGE_TITLE = 'UBER_TRACKING_PAGE_TITLE';
//   static String UBER_TRACKING_PAGE_TITLE_VALUE = '';

//   static const UBER_TRACKING_NCOMMAND = 'UBER_TRACKING_NCOMMAND';
//   static String UBER_TRACKING_NCOMMAND_VALUE = '';

//   static const UBER_TRACKING_NDETAIL_COMMAND = 'UBER_TRACKING_NDETAIL_COMMAND';
//   static String UBER_TRACKING_NDETAIL_COMMAND_VALUE = '';

//   static const DEACTIVE_DEEP_LINK = 'DEACTIVE_DEEP_LINK';
//   static String DEACTIVE_DEEP_LINK_VALUE = '';

//   static Failure? ERROR_GLOBAL_CODE_VALUE;

//   static Future<void> initializeConstant() async {
//     final request = await getIt<GetFAQUsecase>().call(NoParams());

//     if (request is Right<Failure, List<ParametreGlobalResponse>>) {
//       ERROR_GLOBAL_CODE_VALUE = null;
//       final items = request.value;

//       for (final element in items) {
//         if (element.code == NOM_DU_ROBOT) {
//           NOM_DU_ROBOT_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_HEADER_GREET) {
//           ACCEUIL_HEADER_GREET_VALUE = element.contenu;
//         } else if (element.code == ACCUIEL_DICE_DERNIERDEMARRAGE) {
//           ACCUIEL_DICE_DERNIERDEMARRAGE_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_HEADER_FIBERLINE) {
//           ACCEUIL_HEADER_FIBERLINE_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_QUICKACTION_CONTACTUS) {
//           ACCEUIL_QUICKACTION_CONTACTUS_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_QUICKACTION_BESOIN_AIDE) {
//           ACCEUIL_QUICKACTION_BESOIN_AIDE_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_QUICKACTION_RESTART_EQUIPEMENT) {
//           ACCEUIL_QUICKACTION_RESTART_EQUIPEMENT_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_QUICKACTION_TEST_DEBIT) {
//           ACCEUIL_QUICKACTION_TEST_DEBIT_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_QUICKACTION_TRACKMYREQUEST) {
//           ACCEUIL_QUICKACTION_TRACKMYREQUEST_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_QUICKACTION_WIFI) {
//           ACCEUIL_QUICKACTION_WIFI_VALUE = element.contenu;
//         }
//         //============================================================= NEW UPDATE

//         else if (element.code == ACCEUIL_ETAT_SERVICE) {
//           ACCEUIL_ETAT_SERVICE_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_JE_RECHARGE) {
//           ACCEUIL_JE_RECHARGE_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_MES_FACTURES) {
//           ACCEUIL_MES_FACTURES_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_VOLUMES_CONSOMMEE) {
//           ACCEUIL_VOLUMES_CONSOMMEE_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_DERNIER_DEMARRAGE) {
//           ACCEUIL_DERNIER_DEMARRAGE_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_NETWORK_PERFORMANCE) {
//           ACCEUIL_NETWORK_PERFORMANCE_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_NETWORK) {
//           ACCEUIL_NETWORK_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_VoIP) {
//           ACCEUIL_VoIP_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_PAS_INCLUS) {
//           ACCEUIL_PAS_INCLUS_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_DOWNLOAD) {
//           ACCEUIL_DOWNLOAD_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_UPLOAD) {
//           ACCEUIL_UPLOAD_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_MAX_DEBIT) {
//           ACCEUIL_MAX_DEBIT_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_LAST_TEST) {
//           ACCEUIL_LAST_TEST_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_EXPIRATION_DATE) {
//           ACCEUIL_EXPIRATION_DATE_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_UPADE_DATE) {
//           ACCEUIL_UPADE_DATE_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_HISTORIQUE_DES_TEST_DEBIT) {
//           ACCEUIL_HISTORIQUE_DES_TEST_DEBIT_VALUE = element.contenu;
//         }
//         // ===================================================================== NEW UPDATE

//         else if (element.code == ACCEUIL_SUSPENSION_DATE) {
//           ACCEUIL_SUSPENSION_DATE_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_FACTURES_IMPAYEES) {
//           ACCEUIL_FACTURES_IMPAYEES_VALUE = element.contenu;
//         } else if (element.code == ACCEUIL_AUCUNE_FACTURE_CE_MOIS) {
//           ACCEUIL_AUCUNE_FACTURE_CE_MOIS_VALUE = element.contenu;
//         }
//         // ===================================================================== NEW TEST DEBIT

//         else if (element.code == TEST_DEBIT_LIVEBOX) {
//           TEST_DEBIT_LIVEBOX_VALUE = element.contenu;
//         } else if (element.code == TEST_DEBIT_RECEPTION) {
//           TEST_DEBIT_RECEPTION_VALUE = element.contenu;
//         } else if (element.code == TEST_DEBIT_EQUIPEMENT) {
//           TEST_DEBIT_EQUIPEMENT_VALUE = element.contenu;
//         } else if (element.code == TEST_DEBIT_RELANCER_TEST) {
//           TEST_DEBIT_RELANCER_TEST_VALUE = element.contenu;
//         }

//         // ===================================================================== MON WIFI

//         else if (element.code == MON_WIFI_TITLE) {
//           MON_WIFI_TITLE_VALUE = element.contenu;
//         } else if (element.code == MON_WIFI_CHOISIR_ACTION) {
//           MON_WIFI_CHOISIR_ACTION_VALUE = element.contenu;
//         } else if (element.code == MON_WIFI_MODIFIER_PASSWORD) {
//           MON_WIFI_MODIFIER_PASSWORD_VALUE = element.contenu;
//         } else if (element.code == MON_WIFI_CHANGER_MON_WIFI) {
//           MON_WIFI_CHANGER_MON_WIFI_VALUE = element.contenu;
//         } else if (element.code == MON_WIFI_CHANGER_MON_STATUS_WIFI) {
//           MON_WIFI_CHANGER_MON_STATUS_WIFI_VALUE = element.contenu;
//         } else if (element.code == MON_WIFI_CHOSEACTION) {
//           MON_WIFI_CHOSEACTION_VALUE = element.contenu;
//         } else if (element.code == MON_WIFI_CHOSEACTIONS) {
//           MON_WIFI_CHOSEACTIONS_VALUE = element.contenu;
//         } else if (element.code == MON_WIFI_CHOSEWIFI) {
//           MON_WIFI_CHOSEWIFI_VALUE = element.contenu;
//         }

//         //================================================================================== REDEMARRER EQUIPEMENT

//         else if (element.code == REDEMARRER_EQUIPEMENTS_TITLE) {
//           REDEMARRER_EQUIPEMENTS_TITLE_VALUE = element.contenu;
//         } else if (element.code == REDEMARRER_EQUIPEMENTS8_DERNIER_DEMARRAGE) {
//           REDEMARRER_EQUIPEMENTS8_DERNIER_DEMARRAGE_VALUE = element.contenu;
//         } else if (element.code == RESTAREQUIPEMNT_LASTRELOAD) {
//           RESTAREQUIPEMNT_LASTRELOAD_VALUE = element.contenu;
//         } else if (element.code == EQUIPEMNT_RELOADES) {
//           EQUIPEMNT_RELOADES_VALUE = element.contenu;
//         }
//         if (element.code == RELOAD_EQUIPEMENT) {
//           RELOAD_EQUIPEMENT_VALUE = element.contenu;
//         }
//         if (element.code == EQUIPENTRELOAD_NOTHISTORIES) {
//           EQUIPENTRELOAD_NOTHISTORIES_VALUE = element.contenu;
//         }
//         if (element.code == RELOADEQUIPEMENT_BOXFIBRE) {
//           RELOADEQUIPEMENT_BOXFIBRE_VALUE = element.contenu;
//         }

//         //================================================================================= SUIVRE MES DEMANDES

//         else if (element.code == SUIVRE_MES_DEMANDE_TITLE) {
//           SUIVRE_MES_DEMANDE_TITLE_VALUE = element.contenu;
//         } else if (element.code == SUIVRE_MES_COMMANDES) {
//           SUIVRE_MES_COMMANDES_VALUE = element.contenu;
//         } else if (element.code == SUIVRE_MES_DEMANDES_TITELS) {
//           SUIVRE_MES_DEMANDES_TITELS_VALUE = element.contenu;
//         } else if (element.code == TAKEREQUEST_COMMANDE) {
//           TAKEREQUEST_COMMANDE_VALUE = element.contenu;
//         } else if (element.code == TAKEREQUEST_CHOSEID) {
//           TAKEREQUEST_CHOSEID_VALUE = element.contenu;
//         } else if (element.code == CHOSE_ID) {
//           CHOSE_ID_VALUE = element.contenu;
//         } else if (element.code == MES_DEMANDESS) {
//           MES_DEMANDESS_VALUE = element.contenu;
//         }

//         //================================================================================== MA_BOX

//         else if (element.code == MA_BOX_DERNIER_DEMARRAGE) {
//           MA_BOX_DERNIER_DEMARRAGE_VALUE = element.contenu;
//         } else if (element.code == MA_BOX_ACTUALISER) {
//           MA_BOX_ACTUALISER_VALUE = element.contenu;
//         } else if (element.code == MA_BOX_DERNIERE_CONNEXION) {
//           mA_BOX_DERNIERE_CONNEXION_VALUE = element.contenu;
//         } else if (element.code == MA_BOX_REDEMARRER) {
//           MA_BOX_REDEMARRER_VALUE = element.contenu;
//         } else if (element.code == MA_BOX_EQUIPEMENT_CONNECTE_PAR) {
//           MA_BOX_EQUIPEMENT_CONNECTE_PAR_VALUE = element.contenu;
//         } else if (element.code == MA_BOX_SEE_MORE) {
//           MA_BOX_SEE_MORE_VALUE = element.contenu;
//         } else if (element.code == MA_BOX_CABLE) {
//           MA_BOX_CABLE_VALUE = element.contenu;
//         } else if (element.code == MA_BOX_ACCES_FIBRE_DIAGNOSTIQUE) {
//           MA_BOX_ACCES_FIBRE_DIAGNOSTIQUE_VALUE = element.contenu;
//         } else if (element.code == MA_BOX_ACTIVER_WIFI_GUEST) {
//           MA_BOX_ACTIVER_WIFI_GUEST_VALUE = element.contenu;
//         } else if (element.code == MA_BOX_LOCAL_NETWORk) {
//           MA_BOX_LOCAL_NETWORk_VALUE = element.contenu;
//         } else if (element.code == MA_BOX_VIEWMORE) {
//           MA_BOX_VIEWMORE_VALUE = element.contenu;
//         } else if (element.code == MA_BOX_DECONNEXION) {
//           MA_BOX_DECONNEXION_VALUE = element.contenu;
//         } else if (element.code == MA_BOX_TAKEREQUEST) {
//           MA_BOX_TAKEREQUEST_VALUE = element.contenu;
//         } else if (element.code == MABOX_GUESTWIFI) {
//           MABOX_GUESTWIFI_VALUE = element.contenu;
//         } else if (element.code == MABOX_DEVICEMODEL) {
//           MABOX_DEVICEMODEL_VALUE = element.contenu;
//         } else if (element.code == MABOX_FRABRIQUANT) {
//           MABOX_FRABRIQUANT_VALUE = element.contenu;
//         } else if (element.code == MABOX_SERINUMBER) {
//           MABOX_SERINUMBER_VALUE = element.contenu;
//         } else if (element.code == MABOX_ADRESSIP) {
//           MABOX_ADRESSIP_VALUE = element.contenu;
//         } else if (element.code == MABOX_ADRESSIPLOCAL) {
//           MABOX_ADRESSIPLOCAL_VALUE = element.contenu;
//         } else if (element.code == MABOX_ADRESSMAC) {
//           MABOX_ADRESSMAC_VALUE = element.contenu;
//         } else if (element.code == MABOX_SAVEDATE) {
//           MABOX_SAVEDATE_VALUE = element.contenu;
//         } else if (element.code == MABOX_ACCESFIBRE) {
//           MABOX_ACCESFIBRE_VALUE = element.contenu;
//         } else if (element.code == MABOX_TV) {
//           MABOX_TV_VALUE = element.contenu;
//         } else if (element.code == MABOX_VOIP) {
//           MABOX_VOIP_VALUE = element.contenu;
//         } else if (element.code == MABOX_SMATHOME) {
//           MABOX_SMATHOME_VALUE = element.contenu;
//         } else if (element.code == MABOX_WIFI) {
//           MABOX_WIFI_VALUE = element.contenu;
//         } else if (element.code == MA_BOX_SHOWLESS) {
//           MA_BOX_SHOWLESS_VALUE = element.contenu;
//         }

//         // ============================================== MES COMMANDES

//         else if (element.code == COMMANDE_TAKEREQUEST) {
//           COMMANDE_TAKEREQUEST_VALUE = element.contenu;
//         } else if (element.code == COMMANDE_VIDE) {
//           COMMANDE_VIDE_VALUE = element.contenu;
//         } else if (element.code == COMMANDE_DETAIL) {
//           COMMANDE_DETAIL_VALUE = element.contenu;
//         } else if (element.code == COMMANDE_SUIVRE) {
//           COMMANDE_SUIVRE_VALUE = element.contenu;
//         } else if (element.code == COMMANDE_RESTARABONNEMENT) {
//           COMMANDE_RESTARABONNEMENT_VALUE = element.contenu;
//         } else if (element.code == COMMANDE_INEED) {
//           COMMANDE_INEED_VALUE = element.contenu;
//         } else if (element.code == COMMANDE_STOPABONNEMENT) {
//           COMMANDE_STOPABONNEMENT_VALUE = element.contenu;
//         } else if (element.code == COMMANDE_DEMENAGE) {
//           COMMANDE_DEMENAGE_VALUE = element.contenu;
//         } else if (element.code == COMMANDE_CHANGEOFFRE) {
//           COMMANDE_CHANGEOFFRE_VALUE = element.contenu;
//         }

//         // ========================================================== PAYER SA FACTURE FIBRE

//         else if (element.code == BY_FACTURE_SMS) {
//           BY_FACTURE_SMS_VALUE = element.contenu;
//         } else if (element.code == BY_FACTURE_OM) {
//           BY_FACTURE_OM_VALUE = element.contenu;
//         } else if (element.code == BY_FACTURE_BYOM) {
//           BY_FACTURE_BYOM_VALUE = element.contenu;
//         } else if (element.code == BY_FACTURE_BYTIERS) {
//           BY_FACTURE_BYTIERS_VALUE = element.contenu;
//         } else if (element.code == BY_FACTURE_SCANANDPAIE) {
//           BY_FACTURE_SCANANDPAIE_VALUE = element.contenu;
//         } else if (element.code == BY_FACTURE_PRELEVEMENTBC) {
//           BY_FACTURE_PRELEVEMENTBC_VALUE = element.contenu;
//         } else if (element.code == BY_FACTURE_PRELEVBCDSC) {
//           BY_FACTURE_PRELEVBCDSC_VALUE = element.contenu;
//         } else if (element.code == BY_FACTURE_PRELEVBCDSCITM) {
//           BY_FACTURE_PRELEVBCDSCITM_VALUE = element.contenu;
//         } else if (element.code == BY_FACTURE_PRELEVBCBICICI) {
//           BY_FACTURE_PRELEVBCBICICI_VALUE = element.contenu;
//         } else if (element.code == BY_FACTURE_PRELEVBCNSIA) {
//           BY_FACTURE_PRELEVBCNSIA_VALUE = element.contenu;
//         } else if (element.code == BY_FACTURE_PRELEVBCBACI) {
//           BY_FACTURE_PRELEVBCBACI_VALUE = element.contenu;
//         } else if (element.code == BY_FACTURE_PRELEVBCECOBANK) {
//           BY_FACTURE_PRELEVBCECOBANK_VALUE = element.contenu;
//         } else if (element.code == BY_FACTURE_BUYSHORPE) {
//           BY_FACTURE_BUYSHORPE_VALUE = element.contenu;
//         } else if (element.code == BY_FACTURE_BUYSHOPDESC) {
//           BY_FACTURE_BUYSHOPDESC_VALUE = element.contenu;
//         } else if (element.code == BY_FACTURE_BUYSHOPITM) {
//           BY_FACTURE_BUYSHOPITM_VALUE = element.contenu;
//         }

//         // ================================================================= MA COMMUNAUTE

//         else if (element.code == MYCOMMUNAUTE_PROFILINFO) {
//           MYCOMMUNAUTE_PROFILINFO_VALUE = element.contenu;
//         } else if (element.code == MYCOMMUNAUTE_SURCLASSEMENT) {
//           MYCOMMUNAUTE_SURCLASSEMENT_VALUE = element.contenu;
//         } else if (element.code == MYCOMMUNAUTE_PARRAINAGE) {
//           MYCOMMUNAUTE_PARRAINAGE_VALUE = element.contenu;
//         } else if (element.code == MYCOMMUNAUTE_PARRAI_TOTALGAIN) {
//           MYCOMMUNAUTE_PARRAI_TOTALGAIN_VALUE = element.contenu;
//         } else if (element.code == MYCOMMUNAUT_PARRAI_TOTALGAINDESC) {
//           MYCOMMUNAUT_PARRAI_TOTALGAINDESC_VALUE = element.contenu;
//         } else if (element.code == MYCOMMUNAUTE_PARRAI_BECOMEPARRAINFIBRE) {
//           MYCOMMUNAUTE_PARRAI_BECOMEPARRAINFIBRE_VALUE = element.contenu;
//         } else if (element.code == MYCOMMUNAUT_PARRAI_PRICE) {
//           MYCOMMUNAUT_PARRAI_PRICE_VALUE = element.contenu;
//         } else if (element.code == MYCOMMUNAUTE_PARRAI_FAQ) {
//           MYCOMMUNAUTE_PARRAI_FAQ_VALUE = element.contenu;
//         } else if (element.code == MYCOMMUNAUTE_STATUS) {
//           MYCOMMUNAUTE_STATUS_VALUE = element.contenu;
//         } else if (element.code == MYCOMMUNAUTE_NAME) {
//           MYCOMMUNAUTE_NAME_VALUE = element.contenu;
//         } else if (element.code == MYCOMMUNAUTE_NDFIBRE) {
//           MYCOMMUNAUTE_NDFIBRE_VALUE = element.contenu;
//         } else if (element.code == MYCOMMUNAUTE_LOGIN) {
//           MYCOMMUNAUTE_LOGIN_VALUE = element.contenu;
//         } else if (element.code == MYCOMMUNAUTE_NClient) {
//           MYCOMMUNAUTE_NClient_VALUE = element.contenu;
//         } else if (element.code == ACC_FACTURE_RESTANT) {
//           ACC_FACTURE_RESTANT_VALUE = element.contenu;
//         }

//         /// LOGIN
//         ///
//         else if (element.code == LOGIN_BTN_VALIDER) {
//           LOGIN_BTN_VALIDER_VALUE = element.contenu;
//         } else if (element.code == LOGIN_CHAMP_TEL) {
//           LOGIN_CHAMP_TEL_VALUE = element.contenu;
//         } else if (element.code == LOGIN_CHAMP_TEL_ERROR) {
//           LOGIN_CHAMP_TEL_ERROR_VALUE = element.contenu;
//         } else if (element.code == LOGIN_CHAMP_TEL_HINTTEXT) {
//           LOGIN_CHAMP_TEL_HINTTEXT_VALUE = element.contenu;
//         } else if (element.code == LOGIN_DESCRIPTION) {
//           LOGIN_DESCRIPTION_VALUE = element.contenu;
//         } else if (element.code == LOGIN_SSO_GOOGLE) {
//           LOGIN_SSO_GOOGLE_VALUE = element.contenu;
//         } else if (element.code == LOGIN_SSO_GOOGLE_DETAIL_PASVOUS) {
//           LOGIN_SSO_GOOGLE_DETAIL_PASVOUS_VALUE = element.contenu;
//         } else if (element.code == LOGIN_SSO_GOOGLE_DETAIL_TITRE) {
//           LOGIN_SSO_GOOGLE_DETAIL_TITRE_VALUE = element.contenu;
//         } else if (element.code == LOGIN_SSO_TITRE) {
//           LOGIN_SSO_TITRE_VALUE = element.contenu;
//         } else if (element.code == LOGIN_TITRE) {
//           LOGIN_TITRE_VALUE = element.contenu;
//         }
//         // OTP VERIF

//         else if (element.code == OTP_TITRE) {
//           OTP_TITRE_VALUE = element.contenu;
//         } else if (element.code == LOGIN_OTP_DESC_ORDRE_1) {
//           LOGIN_OTP_DESC_ORDRE_1_VALUE = element.contenu;
//         } else if (element.code == LOGIN_OTP_DESC_ORDRE_2) {
//           LOGIN_OTP_DESC_ORDRE_2_VALUE = element.contenu;
//         } else if (element.code == LOGIN_OTP_PREFIX) {
//           LOGIN_OTP_PREFIX_VALUE = element.contenu;
//         } else if (element.code == LOGIN_OTP_RESEND_NEW) {
//           LOGIN_OTP_RESEND_NEW_VALUE = element.contenu;
//         } else if (element.code == LOGIN_OTP_RESEND) {
//           LOGIN_OTP_RESEND_VALUE = element.contenu;
//         } else if (element.code == API_ERROR_UNKNOWN) {
//           API_ERROR_UNKNOWN_VALUE = element.contenu;
//         } else if (element.code == API_ERRROR_CONNECTION) {
//           API_ERRROR_CONNECTION_VALUE = element.contenu;
//         } else if (element.code == API_ERRROR_SOMETHINGWRONG) {
//           API_ERRROR_SOMETHINGWRONG_VALUE = element.contenu;
//         } else if (element.code == API_SUCCESS_OPERATION) {
//           API_SUCCESS_OPERATION_VALUE = element.contenu;
//         } else if (element.code == FAQ_ONE) {
//           FAQ_ONE_VALUE = element.contenu;
//         } else if (element.code == FAQ_TWO) {
//           FAQ_TWO_VALUE = element.contenu;
//         } else if (element.code == FAQ_THREE) {
//           FAQ_THREE_VALUE = element.contenu;
//         } else if (element.code == COM_FIBRE_TITRE_DIAMANT) {
//           COM_FIBRE_TITRE_DIAMANT_VALUE = element.contenu;
//         } else if (element.code == COM_FIBRE_TITRE_OR) {
//           COM_FIBRE_TITRE_OR_VALUE = element.contenu;
//         } else if (element.code == COM_FIBRE_TITRE_ARGENT) {
//           COM_FIBRE_TITRE_ARGENT_VALUE = element.contenu;
//         } else if (element.code == COM_FIBRE_TITRE_BRONZE) {
//           COM_FIBRE_TITRE_BRONZE_VALUE = element.contenu;
//         } else if (element.code == COM_FIBRE_TITRE_NIVEAU_SUP_A) {
//           COM_FIBRE_TITRE_NIVEAU_SUP_A_VALUE = element.contenu;
//         } else if (element.code == COM_FIBRE_TITRE_BRAVO) {
//           COM_FIBRE_TITRE_BRAVO_VALUE = element.contenu;
//         } else if (element.code == COM_FIBRE_CONGRAT_OR) {
//           COM_FIBRE_CONGRAT_OR_VALUE = element.contenu;
//         } else if (element.code == COM_FIBRE_CONGRAT_DIAMANT) {
//           COM_FIBRE_CONGRAT_DIAMANT_VALUE = element.contenu;
//         } else if (element.code == COM_FIBRE_CONGRAT_BRONZE) {
//           COM_FIBRE_CONGRAT_BRONZE_VALUE = element.contenu;
//         } else if (element.code == COM_FIBRE_CONGRAT_ARGENT) {
//           COM_FIBRE_CONGRAT_ARGENT_VALUE = element.contenu;
//         } else if (element.code == COM_FIBRE_TEXT_GLOBAL) {
//           COM_FIBRE_TEXT_GLOBAL_VALUE = element.contenu;
//         } else if (element.code == COM_FIBRE_TEXT_GLOBAL) {
//           COM_FIBRE_TEXT_GLOBAL_VALUE = element.contenu;
//         } else if (element.code == COM_FIBRE_TEXT_FILLEUL) {
//           COM_FIBRE_TEXT_FILLEUL_VALUE = element.contenu;
//         } else if (element.code == TITLE_SEARCH) {
//           TITLE_SEARCH_VALUE = element.contenu;
//         } else if (element.code == SUIVRE_TEXT) {
//           SUIVRE_TEXT_VALUE = element.contenu;
//         } else if (element.code == EMPTY_TEXT) {
//           EMPTY_TEXT_VALUE = element.contenu;
//         } else if (element.code == EMPTY_DATA_TEXT) {
//           EMPTY_DATA_TEXT_VALUE = element.contenu;
//         } else if (element.code == MES_DEMANDE_FORM_TITRE) {
//           MES_DEMANDE_FORM_TITRE_VALUE = element.contenu;
//         } else if (element.code == MES_DEMANDE_FORM_SUB_TITRE) {
//           MES_DEMANDE_FORM_SUB_TITRE_VALUE = element.contenu;
//         } else if (element.code == MES_DEMANDE_FORM_HINTEXT_SIGNALISATION) {
//           MES_DEMANDE_FORM_HINTEXT_SIGNALISATION_VALUE = element.contenu;
//         } else if (element.code == MES_DEMANDE_FORM_ERROR_SIGNALISATION) {
//           MES_DEMANDE_FORM_ERROR_SIGNALISATION_VALUE = element.contenu;
//         } else if (element.code == MES_DEMANDE_FORM_HINTEXT_PROBLEM) {
//           MES_DEMANDE_FORM_HINTEXT_PROBLEM_VALUE = element.contenu;
//         } else if (element.code == MES_DEMANDE_FORM_ERROR_PROBLEM) {
//           MES_DEMANDE_FORM_ERROR_PROBLEM_VALUE = element.contenu;
//         } else if (element.code == MES_DEMANDE_FORM_HINTEXT_MESSAGE) {
//           MES_DEMANDE_FORM_HINTEXT_MESSAGE_VALUE = element.contenu;
//         } else if (element.code == MES_DEMANDE_FORM_ERROR_MESSAGE) {
//           MES_DEMANDE_FORM_ERROR_MESSAGE_VALUE = element.contenu;
//         } else if (element.code == MABOX_WIFI_QR_SAMPLE) {
//           MABOX_WIFI_QR_SAMPLE_VALUE = element.contenu;
//         } else if (element.code == MABOX_WIFI_GUEST_TEXT) {
//           MABOX_WIFI_GUEST_TEXT_VALUE = element.contenu;
//         } else if (element.code == MABOX_WIFI_GUEST_DESC) {
//           MABOX_WIFI_GUEST_DESC_VALUE = element.contenu;
//         } else if (element.code == MABOX_CONNECTE_TEXT) {
//           MABOX_CONNECTE_TEXT_VALUE = element.contenu;
//         } else if (element.code == MABOX_DECONNECTE_TEXT) {
//           MABOX_DECONNECTE_TEXT_VALUE = element.contenu;
//         } else if (element.code == HOME_FACTURE_DETAIL_TEXT) {
//           HOME_FACTURE_DETAIL_TEXT_VALUE = element.contenu;
//         } else if (element.code == HOME_DOWNLOAD_APP_TEXT) {
//           HOME_DOWNLOAD_APP_TEXT_VALUE = element.contenu;
//         } else if (element.code == HOME_FACTURENo_TEXT) {
//           HOME_FACTURENo_TEXT_VALUE = element.contenu;
//         } else if (element.code == HOME_FACTURE_DATE_ECHEANCE_TEXT) {
//           HOME_FACTURE_DATE_ECHEANCE_TEXT_VALUE = element.contenu;
//         } else if (element.code == HOME_FACTURE_MONTANT_TEXT) {
//           HOME_FACTURE_MONTANT_TEXT_VALUE = element.contenu;
//         } else if (element.code == HOME_FACTURE_PAYER_TEXT) {
//           HOME_FACTURE_PAYER_TEXT_VALUE = element.contenu;
//         } else if (element.code == HOME_EQUIPEMENT_CONNECTE) {
//           HOME_EQUIPEMENT_CONNECTE_VALUE = element.contenu;
//         } else if (element.code == HOME_INTERNET_DETAIL_CURRENT_CONSO) {
//           HOME_INTERNET_DETAIL_CURRENT_CONSO_VALUE = element.contenu;
//         } else if (element.code == HOME_INTERNET_DETAIL_LAST_CONSO) {
//           HOME_INTERNET_DETAIL_LAST_CONSO_VALUE = element.contenu;
//         } else if (element.code == HOME_INTERNET_LAST_REBOOT_ERROR) {
//           HOME_INTERNET_LAST_REBOOT_ERROR_VALUE = element.contenu;
//         } else if (element.code == HOME_INTERNET_LAST_REBOOT_SUCCESS) {
//           HOME_INTERNET_LAST_REBOOT_SUCCESS_VALUE = element.contenu;
//         } else if (element.code == HOME_INTERNET_LAST_REBOOT_DEVICEID) {
//           HOME_INTERNET_LAST_REBOOT_DEVICEID_VALUE = element.contenu;
//         } else if (element.code == HOME_AVANTAGE_TITRE) {
//           HOME_AVANTAGE_TITRE_VALUE = element.contenu;
//         } else if (element.code == HOME_AVANTAGE_CODE1) {
//           HOME_AVANTAGE_CODE1_VALUE = element.contenu;
//         } else if (element.code == HOME_AVANTAGE_CODE2) {
//           HOME_AVANTAGE_CODE2_VALUE = element.contenu;
//         } else if (element.code == HOME_AVANTAGE_CODE3) {
//           HOME_AVANTAGE_CODE3_VALUE = element.contenu;
//         } else if (element.code == HOME_AVANTAGE_CODE4) {
//           home_avantage_code4 = element.contenu;
//         } else if (element.code == MABOX_NEW_CONNECTION) {
//           MABOX_NEW_CONNECTION_VALUE = element.contenu;
//         } else if (element.code == HOME_CONTRAT_TYPE_PRE) {
//           HOME_CONTRAT_TYPE_PRE_VALUE = element.contenu;
//         } else if (element.code == HOME_CONTRAT_TYPE_POST) {
//           HOME_CONTRAT_TYPE_POST_VALUE = element.contenu;
//         } else if (element.code == HOME_POSTPAYE_CONTENT_SUSP) {
//           HOME_POSTPAYE_CONTENT_SUSP_VALUE = element.contenu;
//         } else if (element.code == HOME_POSTPAYE_FACTURE_IMPAYEE) {
//           HOME_POSTPAYE_FACTURE_IMPAYEE_VALUE = element.contenu;
//         } else if (element.code == HOME_PRETPAYE_CONTENT_EXPIRE) {
//           HOME_PRETPAYE_CONTENT_EXPIRE_VALUE = element.contenu;
//         } else if (element.code == HOME_POSTPAYE_CONTENT_BTN_PAIEFACTURE) {
//           HOME_POSTPAYE_CONTENT_BTN_PAIEFACTURE_VALUE = element.contenu;
//         } else if (element.code == HOME_POPPUP_SAV) {
//           HOME_POPPUP_SAV_VALUE = element.contenu;
//         } else if (element.code == HOME_POPUP_SAV_EMPTY) {
//           HOME_POPUP_SAV_EMPTY_VALUE = element.contenu;
//         } else if (element.code == HOME_MONWIFI_STATUT_TITRE) {
//           HOME_MONWIFI_STATUT_TITRE_VALUE = element.contenu;
//         } else if (element.code == HOME_MONWIFI_NEW_PASSWORD_HINTEXT) {
//           HOME_MONWIFI_NEW_PASSWORD_HINTEXT_VALUE = element.contenu;
//         } else if (element.code == HOME_MONWIFI_ERROR_PASSWORD_HINTEXT) {
//           HOME_MONWIFI_ERROR_PASSWORD_HINTEXT_VALUE = element.contenu;
//         } else if (element.code == HOME_MONWIFI_CONFIRM_PASSWORD_HINTEXT) {
//           HOME_MONWIFI_CONFIRM_PASSWORD_HINTEXT_VALUE = element.contenu;
//         } else if (element.code ==
//             HOME_MONWIFI_ERROR_CONFIRM_PASSWORD_HINTEXT) {
//           HOME_MONWIFI_ERROR_CONFIRM_PASSWORD_HINTEXT_VALUE = element.contenu;
//         } else if (element.code == HOME_MONWIFI_BTN_MODIF) {
//           HOME_MONWIFI_BTN_MODIF_VALUE = element.contenu;
//         } else if (element.code == HOME_MONWIFI_NAME_WIFI_HINTEXT) {
//           HOME_MONWIFI_NAME_WIFI_HINTEXT_VALUE = element.contenu;
//         } else if (element.code == HOME_MONWIFI_ERROR_NAME_WIFI_HINTEXT) {
//           HOME_MONWIFI_ERROR_NAME_WIFI_HINTEXT_VALUE = element.contenu;
//         } else if (element.code == POPUP_DECONNECTION) {
//           POPUP_DECONNECTION_VALUE = element.contenu;
//           POPUP_DECONNECTION_TITRE = element.titre;
//         } else if (element.code == INFO_COMPLEMENTAIRE) {
//           INFO_COMPLEMENTAIRE_VALUE = element.contenu;
//         } else if (element.code == TESTDEBIT_RECEPTION) {
//           TESTDEBIT_RECEPTION_VALUE = element.contenu;
//         } else if (element.code == TESTDEBIT_HISTORIQUE) {
//           TESTDEBIT_HISTORIQUE_VALUE = element.contenu;
//         } else if (element.code == TESTDEBIT_BTN_RELANCE) {
//           TESTDEBIT_BTN_RELANCE_VALUE = element.contenu;
//         } else if (element.code == TESTDEBIT_EQUIPEMENT) {
//           TESTDEBIT_EQUIPEMENT_VALUE = element.contenu;
//         } else if (element.code == TESTDEBIT_HISTORIQUE_DATA_EMPTY) {
//           TESTDEBIT_HISTORIQUE_DATA_EMPTY_VALUE = element.contenu;
//         } else if (element.code == TESTDEBIT_HISTORIQUE_DURETEST) {
//           TESTDEBIT_HISTORIQUE_DURETEST_VALUE = element.contenu;
//         } else if (element.code == TESTDEBIT_HISTORIQUE_DATETEST) {
//           TESTDEBIT_HISTORIQUE_DATETEST_VALUE = element.contenu;
//         } else if (element.code == PROFIL_APPBAR_TITRE) {
//           PROFIL_APPBAR_TITRE_VALUE = element.contenu;
//         } else if (element.code == PROFIL_INFO_PERSONNEL) {
//           PROFIL_INFO_PERSONNEL_VALUE = element.contenu;
//         } else if (element.code == PROFIL_INFO_CONTACT) {
//           PROFIL_INFO_CONTACT_VALUE = element.contenu;
//         } else if (element.code == PROFIL_INFO_EMAIL) {
//           PROFIL_INFO_EMAIL_VALUE = element.contenu;
//         } else if (element.code == PROFIL_INFO_CONTACT_VERIF) {
//           PROFIL_INFO_CONTACT_VERIF_VALUE = element.contenu;
//         } else if (element.code == PROFIL_INFO_EMAIL_VERIF) {
//           PROFIL_INFO_EMAIL_VERIF_VALUE = element.contenu;
//         } else if (element.code == PROFIL_INFO_EMAIL_NONVERIF) {
//           PROFIL_INFO_EMAIL_NONVERIF_VALUE = element.contenu;
//         } else if (element.code == ABOUT_US_APPBAR_TITLE) {
//           ABOUT_US_APPBAR_TITLE_VALUE = element.contenu;
//         } else if (element.code == ABOUT_US_APP_TITLE) {
//           ABOUT_US_APP_TITLE_VALUE = element.contenu;
//         } else if (element.code == ABOUT_US_ORGANISATION_TITLE) {
//           ABOUT_US_ORGANISATION_TITLE_VALUE = element.contenu;
//         } else if (element.code == ABOUT_US_APP_DESCRIP_1) {
//           ABOUT_US_APP_DESCRIP_1_VALUE = element.contenu;
//         } else if (element.code == ABOUT_US_APP_DESCRIP_2) {
//           ABOUT_US_APP_DESCRIP_2_VALUE = element.contenu;
//         } else if (element.code == ABOUT_US_APP_DESCRIP_3) {
//           ABOUT_US_APP_DESCRIP_3_VALUE = element.contenu;
//         } else if (element.code == CHATBOT_TEXTFIELD_HINTEXT) {
//           CHATBOT_TEXTFIELD_HINTEXT_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP4_PHOTO_UPDATE_TITRE) {
//           CONTRAT_STEP4_PHOTO_UPDATE_TITRE_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP4_PHOTO_TAKE_TITRE) {
//           CONTRAT_STEP4_PHOTO_TAKE_TITRE_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_RATTACHEMENT_CONGRAT_TITLE) {
//           CONTRAT_RATTACHEMENT_CONGRAT_TITLE_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_RATTACHEMENT_CONGRAT_DESCRIP) {
//           CONTRAT_RATTACHEMENT_CONGRAT_DESCRIP_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP1_HEADER_TITRE) {
//           CONTRAT_STEP1_HEADER_TITRE_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP1_HEADER_DESC) {
//           CONTRAT_STEP1_HEADER_DESC_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP1_TEXTFIELD_TITRE_ND) {
//           CONTRAT_STEP1_TEXTFIELD_TITRE_ND_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP1_TEXTFIELD_HINTTEXT) {
//           CONTRAT_STEP1_TEXTFIELD_HINTTEXT_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP1_TEXTFIELD_ERROR_ND) {
//           CONTRAT_STEP1_TEXTFIELD_ERROR_ND_VALUE = element.contenu;
//         } else if (element.code ==
//             CONTRAT_STEP3_TEXTFIELD_ABONNEMENT_HINTTEXT) {
//           CONTRAT_STEP3_TEXTFIELD_ABONNEMENT_HINTTEXT_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP3_TEXTFIELD_ABONNEMENT_ERROR) {
//           CONTRAT_STEP3_TEXTFIELD_ABONNEMENT_ERROR_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP3_ADDRESS_ABONNEMENT_TITLE) {
//           CONTRAT_STEP3_ADDRESS_ABONNEMENT_TITLE_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP3_TYPE_ABONNEMENT_TITLE) {
//           CONTRAT_STEP3_TYPE_ABONNEMENT_TITLE_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP3_NDESIGNATION_TITLE) {
//           CONTRAT_STEP3_NDESIGNATION_TITLE_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP3_FORMULE_TITLE) {
//           CONTRAT_STEP3_FORMULE_TITLE_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP3_MYACCOUNT_TITLE) {
//           CONTRAT_STEP3_MYACCOUNT_TITLE_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP3_TITLE) {
//           CONTRAT_STEP3_TITLE_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP2_OTP_TITLE) {
//           CONTRAT_STEP2_OTP_TITLE_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP2_OTP_EXPIRE_TITLE) {
//           CONTRAT_STEP2_OTP_EXPIRE_TITLE_VALUE = element.contenu;
//         } else if (element.code == CONTRAT_STEP2_BTN_RATTACH_MANUEL) {
//           CONTRAT_STEP2_BTN_RATTACH_MANUEL_VALUE = element.contenu;
//         } else if (element.code == RATTACHEMENT_APPBAR_TITLE) {
//           RATTACHEMENT_APPBAR_TITLE_VALUE = element.contenu;
//         } else if (element.code == RATTACHEMENT_APPBAR_DESC) {
//           RATTACHEMENT_APPBAR_DESC_VALUE = element.contenu;
//         } else if (element.code == RATTACHEMENT_CANCEL) {
//           RATTACHEMENT_CANCEL_VALUE = element.contenu;
//         } else if (element.code == GEOLOC_POPUP_TITRE) {
//           GEOLOC_POPUP_TITRE_VALUE = element.contenu;
//         } else if (element.code == GEOLOC_POPUP_VILLE) {
//           GEOLOC_POPUP_VILLE_VALUE = element.contenu;
//         } else if (element.code == GEOLOC_POPUP_COMMUNE) {
//           GEOLOC_POPUP_COMMUNE_VALUE = element.contenu;
//         } else if (element.code == GEOLOC_POPUP_QUARTIER) {
//           GEOLOC_POPUP_QUARTIER_VALUE = element.contenu;
//         } else if (element.code == GEOLOC_POPUP_COORDONNE) {
//           GEOLOC_POPUP_COORDONNE_VALUE = element.contenu;
//         } else if (element.code == OTP_VERIF_EMAIL_SENDEMAIL_TEXT) {
//           OTP_VERIF_EMAIL_SENDEMAIL_TEXT_VALUE = element.contenu;
//         } else if (element.code == SCAN_ADDRESMAC_TEXT) {
//           SCAN_ADDRESMAC_TEXT_VALUE = element.contenu;
//         } else if (element.code == SCAN_BTN) {
//           SCAN_BTN_VALUE = element.contenu;
//         } else if (element.code == TEXTFIELD_MAC_HINTEXT) {
//           TEXTFIELD_MAC_HINTEXT_VALUE = element.contenu;
//         } else if (element.code == TEXTFIELD_MAC_ERROR) {
//           TEXTFIELD_MAC_ERROR_VALUE = element.contenu;
//         } else if (element.code == SCAN_SUBTITLE_ND_TEXT) {
//           SCAN_SUBTITLE_ND_TEXT_VALUE = element.contenu;
//         } else if (element.code == TEXTFIELD_ND_HINTEXT) {
//           TEXTFIELD_ND_HINTEXT_VALUE = element.contenu;
//         } else if (element.code == TEXTFIELD_ND_ERROR) {
//           TEXTFIELD_ND_ERROR_VALUE = element.contenu;
//         } else if (element.code == SCAN_SUBTITLE_MAC_TEXT) {
//           SCAN_SUBTITLE_MAC_TEXT_VALUE = element.contenu;
//         } else if (element.code == TEXTFIELD_LOGIN_HINTEXT) {
//           TEXTFIELD_LOGIN_HINTEXT_VALUE = element.contenu;
//         } else if (element.code == TEXTFIELD_LOGIN_ERROR) {
//           TEXTFIELD_LOGIN_ERROR_VALUE = element.contenu;
//         } else if (element.code == SCAN_SUBTITLE_LOGIN_TEXT) {
//           SCAN_SUBTITLE_LOGIN_TEXT_VALUE = element.contenu;
//         } else if (element.code == FORM_SCAN_TITRE_1) {
//           FORM_SCAN_TITRE_1_VALUE = element.contenu;
//         } else if (element.code == FORM_SCAN_TITRE_2) {
//           FORM_SCAN_TITRE_2_VALUE = element.contenu;
//         } else if (element.code == FORM_SCAN_TITRE_3) {
//           FORM_SCAN_TITRE_3_VALUE = element.contenu;
//         } else if (element.code == SCAN_PAGE_TEXT) {
//           SCAN_PAGE_TEXT_VALUE = element.contenu;
//         } else if (element.code == POPUP_EMAIL_CONFIRM) {
//           POPUP_EMAIL_CONFIRM_VALUE = element.contenu;
//         } else if (element.code == FACTURE_CONTRAT_POSTPAYER_TITRE) {
//           FACTURE_CONTRAT_POSTPAYER_TITRE_VALUE = element.contenu;
//         } else if (element.code == FACTURE_CONTRAT_PREPAYER_TITRE) {
//           FACTURE_CONTRAT_PREPAYER_TITRE_VALUE = element.contenu;
//         } else if (element.code == HOME_DIAGNOSTIC_HEADER) {
//           HOME_DIAGNOSTIC_HEADER_VALUE = element.contenu;
//         } else if (element.code == HOME_EQUIPEMENT_EMPTY) {
//           HOME_EQUIPEMENT_EMPTY_VALUE = element.contenu;
//         } else if (element.code == HOME_EQUIPEMENT_TEXT) {
//           HOME_EQUIPEMENT_TEXT_VALUE = element.contenu;
//         } else if (element.code == HOME_CONNECTE_TEXT) {
//           HOME_CONNECTE_TEXT_VALUE = element.contenu;
//         } else if (element.code == HOME_DATA_INTERNET_EMPTY) {
//           HOME_DATA_INTERNET_EMPTY_VALUE = element.contenu;
//         } else if (element.code == HOME_TVPASINCLUS) {
//           HOME_TVPASINCLUS_VALUE = element.contenu;
//         } else if (element.code == HOME_STAT_VOLUME_CONSOMME) {
//           HOME_STAT_VOLUME_CONSOMME_VALUE = element.contenu;
//         } else if (element.code == HOME_STAT_HEQUIPEMENT) {
//           HOME_STAT_HEQUIPEMENT_VALUE = element.contenu;
//         } else if (element.code == HOME_SETTING_PANEL) {
//           HOME_SETTING_PANEL_VALUE = element.contenu;
//         } else if (element.code == HOME_SETTING_PANEL_INFOPROFIL) {
//           HOME_SETTING_PANEL_INFOPROFIL_VALUE = element.contenu;
//         } else if (element.code == HOME_SETTING_PANEL_LIST_NOTIFS) {
//           HOME_SETTING_PANEL_LIST_NOTIFS_VALUE = element.contenu;
//         } else if (element.code == HOME_SETTING_PANEL_LINK_APP) {
//           HOME_SETTING_PANEL_LINK_APP_VALUE = element.contenu;
//           HOME_SETTING_PANEL_LINK_APP_TITRE = element.titre;
//         } else if (element.code == HOME_SETTING_PANEL_ABOUTUS) {
//           HOME_SETTING_PANEL_ABOUTUS_VALUE = element.contenu;
//         } else if (element.code == HOME_TABBAR) {
//           HOME_TABBAR_VALUE = element.contenu;
//         } else if (element.code == MABOX_TABBAR) {
//           MABOX_TABBAR_VALUE = element.contenu;
//         } else if (element.code == MESDEMANDE_TABBAR) {
//           MESDEMANDE_TABBAR_VALUE = element.contenu;
//         } else if (element.code == COMMUNAUTE_FIBRE_TABBAR) {
//           COMMUNAUTE_FIBRE_TABBAR_VALUE = element.contenu;
//         } else if (element.code == MA_MAISON_TABBAR) {
//           MA_MAISON_TABBAR_VALUE = element.contenu;
//         } else if (element.code == IS_ENCRYPT) {
//           IS_ENCRYPT_VALUE = element.contenu;
//         } else if (element.code == LINK_PREPAYER) {
//           LINK_PREPAYER_VALUE = element.contenu;
//         } else if (element.code == LINK_POSTPAYER) {
//           LINK_POSTPAYER_VALUE = element.contenu;
//         } else if (element.code == LINK_ORANGE_STORE) {
//           LINK_ORANGE_STORE_VALUE = element.contenu;
//         } else if (element.code == LINK_ORANGE_MABOX_SITE) {
//           LINK_ORANGE_MABOX_SITE_VALUE = element.contenu;
//         } else if (element.code == ALLER_ACCUEIL_VERIF) {
//           ALLER_ACCUEIL_VERIF_VALUE = element.contenu;
//         } else if (element.code == HIDE_SERVICE_SECTION) {
//           HIDE_SERVICE_SECTION_VALUE = element.contenu;
//         } else if (element.code == HIDE_LIVEBOX_CONTENT) {
//           HIDE_LIVEBOX_CONTENT_VALUE = element.contenu;
//         } else if (element.code == HIDE_GRAPH_SECTION) {
//           HIDE_GRAPH_SECTION_VALUE = element.contenu;
//         } else if (element.code == HIDE_TEST_DEBIT_VIEW) {
//           HIDE_TEST_DEBIT_VIEW_VALUE = element.contenu;
//         } else if (element.code == POPUP_TEST_DEBIT_TITRE) {
//           POPUP_TEST_DEBIT_TITRE_VALUE = element.contenu;
//         } else if (element.code == POPUP_TEST_DEBIT_DESCRIPTION) {
//           POPUP_TEST_DEBIT_DESCRIPTION_VALUE = element.contenu;
//         } else if (element.code == URL_NPERF_ANDROID) {
//           urlNperfANDROID = element.contenu;
//         } else if (element.code == URL_NPERF_WEB) {
//           urlNperfWEB = element.contenu;
//         } else if (element.code == URL_SPEED_TEST_ANDROID) {
//           urlSpeedTestANDROID = element.contenu;
//         } else if (element.code == URL_SPEED_TEST_IOS) {
//           urlSpeedTestIOS = element.contenu;
//         } //
//         else if (element.code == URL_NPERF_IOS) {
//           urlNperfIOS = element.contenu;
//           //urlNperfIOS
//         } else if (element.code == URL_SPEED_TEST_WEB) {
//           urlSpeedTestWEB = element.contenu;
//         } else if (element.code == PLUS_INFO_ABOUT_US) {
//           PLUS_INFO_ABOUT_US_VALUE = element.contenu;
//         } else if (element.code == MISE_EN_SERVICE_FIRST_DATE) {
//           MISE_EN_SERVICE_FIRST_DATE_VALUE = element.contenu;
//         } else if (element.code == MISE_EN_SERVICE_LAST_DATE) {
//           MISE_EN_SERVICE_LAST_DATE_VALUE = element.contenu;
//         } else if (element.code == MAXIT_ONLY) {
//           MAXIT_ONLY_VALUE = element.contenu;
//         } else if (element.code == PAGE_GUARD) {
//           PAGE_GUARD_VALUE = element.contenu;
//         } else if (element.code == PAGE_GUARD_TITLE) {
//           PAGE_GUARD_TITLE_VALUE = element.contenu;
//         } else if (element.code == PAGE_GUARD_BTN_TITLE) {
//           PAGE_GUARD_BTN_TITLE_VALUE = element.contenu;
//         } else if (element.code == PAGE_GUARD_AUTH) {
//           PAGE_GUARD_AUTH_VALUE = element.contenu;
//         } else if (element.code == PAGE_GUARD_MAXIT_APP_LINK_IOS) {
//           PAGE_GUARD_MAXIT_APP_LINK_IOS_VALUE = element.contenu;
//         } else if (element.code == PAGE_GUARD_MAXIT_APP_LINK_ANDROID) {
//           PAGE_GUARD_MAXIT_APP_LINK_ANDROID_VALUE = element.contenu;
//         } else if (element.code == PAGE_GUARD_MAXIT_BTN_TITLE) {
//           PAGE_GUARD_MAXIT_BTN_TITLE_VALUE = element.contenu;
//         } else if (element.code == PAGE_LOGIN_HINTETX_TEL) {
//           PAGE_LOGIN_HINTETX_TEL_VALUE = element.contenu;
//         } else if (element.code == SECTION_COM_FIBRE_LEGEND) {
//           SECTION_COM_FIBRE_LEGEND_VALUE = element.contenu;
//         } else if (element.code == SECTION_COM_FIBRE_STATUS_TRAITE) {
//           SECTION_COM_FIBRE_STATUS_TRAITE_VALUE = element.contenu;
//         } else if (element.code == SECTION_COM_FIBRE_STATUS_REJET) {
//           SECTION_COM_FIBRE_STATUS_REJET_VALUE = element.contenu;
//         } else if (element.code == SECTION_COM_FIBRE_STATUS_MILITE_MENS) {
//           SECTION_COM_FIBRE_STATUS_MILITE_MENS_VALUE = element.contenu;
//         } else if (element.code == SECTION_COM_FIBRE_STATUS_ENCOURS) {
//           SECTION_COM_FIBRE_STATUS_ENCOURS_VALUE = element.contenu;
//         } else if (element.code == MABOX_HEADER_TITLE) {
//           MABOX_HEADER_TITLE_VALUE = element.contenu;
//         } else if (element.code == MABOX_HEADER_BTN_ACTUALISER) {
//           MABOX_HEADER_BTN_ACTUALISER_VALUE = element.contenu;
//         } else if (element.code == MABOX_HEADER_POPUP_AFTER_BTN_ACTUALISER) {
//           MABOX_HEADER_POPUP_AFTER_BTN_ACTUALISER_VALUE = element.contenu;
//         } else if (element.code == SURCLASSEMENT_DESC) {
//           SURCLASSEMENT_DESC_VALUE = element.contenu;
//         } else if (element.code == FORM_ELIGIBILITE_DES) {
//           FORM_ELIGIBILITE_DES_VALUE = element.contenu;
//         } else if (element.code == FORM_ELIGIBILITE_TITRE) {
//           FORM_ELIGIBILITE_TITRE_VALUE = element.contenu;
//         } else if (element.code == FORM_ELIGIBILITE_HINTCOORDONNE) {
//           FORM_ELIGIBILITE_HINTCOORDONNE_VALUE = element.contenu;
//         } else if (element.code == FORM_RELOCATION_OLDADRESSE) {
//           FORM_RELOCATION_OLDADRESSE_VALUE = element.contenu;
//         } else if (element.code == FORM_RELOCATION_NEWADRESSE) {
//           FORM_RELOCATION_NEWADRESSE_VALUE = element.contenu;
//         } else if (element.code == FORM_RELOCATION_OLDADRESSE_HINTEXT) {
//           FORM_RELOCATION_OLDADRESSE_HINTEXT_VALUE = element.contenu;
//         } else if (element.code == FORM_RELOCATION_NEWADRESSE_HINTEXT) {
//           FORM_RELOCATION_NEWADRESSE_HINTEXT_VALUE = element.contenu;
//         } else if (element.code == DATE_SOUHAITE) {
//           DATE_SOUHAITE_VALUE = element.contenu;
//         } else if (element.code == DATE_SOUHAITE_HINTEXT) {
//           DATE_SOUHAITE_HINTEXT_VALUE = element.contenu;
//         } else if (element.code == PROFIL_DEL_APPBAR_TITLE) {
//           PROFIL_DEL_APPBAR_TITLE_VALUE = element.contenu;
//         } else if (element.code == PROFIL_DEL_TITRE) {
//           PROFIL_DEL_TITRE_VALUE = element.contenu;
//         } else if (element.code == PROFIL_DELETE_DESCRIPTION) {
//           PROFIL_DELETE_DESCRIPTION_VALUE = element.contenu;
//         } else if (element.code == PROFIL_DEL_CONFIRM_TEL) {
//           PROFIL_DEL_CONFIRM_TEL_VALUE = element.contenu;
//         } else if (element.code == PROFIL_DEL_CONFIRM_TEL_DESC) {
//           PROFIL_DEL_CONFIRM_TEL_DESC_VALUE = element.contenu;
//         } else if (element.code == PROFIL_DEL_ERROR_DIFF_NUMBER) {
//           PROFIL_DEL_ERROR_DIFF_NUMBER_VALUE = element.contenu;
//         } else if (element.code == PROFIL_DEL_BTN_TITLE) {
//           PROFIL_DEL_BTN_TITLE_VALUE = element.contenu;
//         } else if (element.code == RATTACHEMENT_MANUEL_HIDE) {
//           RATTACHEMENT_MANUEL_HIDE_VALUE = element.contenu;
//         } else if (element.code == MA_MAISON_HIDE) {
//           MA_MAISON_HIDE_VALUE = element.contenu;
//         } else if (element.code == TRANSFERT_LIGNE_VIDE) {
//           TRANSFERT_LIGNE_VIDE_VALUE = element.contenu;
//         } else if (element.code == OFFRE_VIDE) {
//           OFFRE_VIDE_VALUE = element.contenu;
//         } else if (element.code == SIGNALISATION_VIDE) {
//           SIGNALISATION_VIDE_VALUE = element.contenu;
//         } else if (element.code ==
//             HOME_CONTRAT_TYPE_PREPAYER_NOT_AVAILABLE_CHANGER_OFRRE) {
//           HOME_CONTRAT_TYPE_PREPAYER_NOT_AVAILABLE_CHANGER_OFRRE_VALUE =
//               element.contenu;
//         } else if (element.code == UNAUTHENTICATED_TEXT) {
//           UNAUTHENTICATED_TEXT_VALUE = element.contenu;
//         } else if (element.code == DIALOG_STATUS_CLIENT_FIBRE_TITLE) {
//           DIALOG_STATUS_CLIENT_FIBRE_TITLE_VALUE = element.contenu;
//         } else if (element.code == DIALOG_STATUS_CLIENT_FIBRE_DESC) {
//           DIALOG_STATUS_CLIENT_FIBRE_DESC_VALUE = element.contenu;
//         } else if (element.code == DIALOG_FIRST_VIEW_TITLE_POPUP) {
//           DIALOG_FIRST_VIEW_TITLE_POPUP_VALUE = element.contenu;
//         } else if (element.code == DIALOG_FIRST_VIEW_TITLE_TEXT) {
//           DIALOG_FIRST_VIEW_TITLE_TEXT_VALUE = element.contenu;
//         } else if (element.code == DIALOG_FIRST_VIEW_SUBTITLE_TEXT) {
//           DIALOG_FIRST_VIEW_SUBTITLE_TEXT_VALUE = element.contenu;
//         } else if (element.code == DIALOG_FIRST_VIEW_DESC_TEXT) {
//           DIALOG_FIRST_VIEW_DESC_TEXT_VALUE = element.contenu;
//         } else if (element.code == DIALOG_UPDATE_APP_NAME) {
//           DIALOG_UPDATE_APP_NAME_VALUE = element.contenu;
//         } else if (element.code == DIALOG_UPDATE_APP_NAME_GROUPE) {
//           DIALOG_UPDATE_APP_NAME_GROUPE_VALUE = element.contenu;
//         } else if (element.code == DIALOG_UPDATE_APP_NAME_VERSION) {
//           DIALOG_UPDATE_APP_NAME_VERSION_VALUE = element.contenu;
//         } else if (element.code == DIALOG_UPDATE_APP_TEXT) {
//           DIALOG_UPDATE_APP_TEXT_VALUE = element.contenu;
//         } else if (element.code == DIALOG_UPDATE_APP_NEW_FEATURE_TEXT) {
//           DIALOG_UPDATE_APP_NEW_FEATURE_TEXT_VALUE = element.contenu;
//         } else if (element.code == DIALOG_UPDATE_APP_NOUVEAUTES) {
//           DIALOG_UPDATE_APP_NOUVEAUTES_VALUE = element.contenu;
//         } else if (element.code == DIALOG_UPDATE_NOW) {
//           DIALOG_UPDATE_NOW_VALUE = element.contenu;
//         } else if (element.code == DIALOG_UPDATE_LATER) {
//           DIALOG_UPDATE_LATER_VALUE = element.contenu;
//         } else if (element.code == DOMOTIQUE_PAGE_LAISSER_PASER_FIDEL) {
//           DOMOTIQUE_PAGE_LAISSER_PASER_FIDEL_VALUE = element.contenu;
//         } else if (element.code == DOMOTIQUE_PAGE_TITLE) {
//           DOMOTIQUE_PAGE_TITLE_VALUE = element.contenu;
//         } else if (element.code == DOMOTIQUE_PAGE_SUBTITLE) {
//           DOMOTIQUE_PAGE_SUBTITLE_VALUE = element.contenu;
//         } else if (element.code == DOMOTIQUE_PAGE_PRESENTATION_TITLE) {
//           DOMOTIQUE_PAGE_PRESENTATION_TITLE_VALUE = element.contenu;
//         } else if (element.code == DOMOTIQUE_PAGE_ELIGIBILITE_POPUP_TITLE) {
//           DOMOTIQUE_PAGE_ELIGIBILITE_POPUP_TITLE_VALUE = element.contenu;
//         } else if (element.code == DOMOTIQUE_PAGE_ELIGIBILITE_POPUP_SUBTITLE) {
//           DOMOTIQUE_PAGE_ELIGIBILITE_POPUP_SUBTITLE_VALUE = element.contenu;
//         } else if (element.code ==
//             DOMOTIQUE_PAGE_BTN_ELIGIBILITE_SIGNIN_DOMOTIQUE) {
//           DOMOTIQUE_PAGE_BTN_ELIGIBILITE_SIGNIN_DOMOTIQUE_VALUE =
//               element.contenu;
//         } else if (element.code ==
//             DOMOTIQUE_PAGE_BTN_ELIGIBILITE_PAIE_FACTURE) {
//           DOMOTIQUE_PAGE_BTN_ELIGIBILITE_PAIE_FACTURE_VALUE = element.contenu;
//         } else if (element.code ==
//             DOMOTIQUE_PAGE_ELIGIBILITE_FACTURE_IMPAYER_TITLE) {
//           DOMOTIQUE_PAGE_ELIGIBILITE_FACTURE_IMPAYER_TITLE_VALUE =
//               element.contenu;
//         } else if (element.code ==
//             DOMOTIQUE_PAGE_ELIGIBILITE_FACTURE_IMPAYER_INTERNET_TITLE) {
//           DOMOTIQUE_PAGE_ELIGIBILITE_FACTURE_IMPAYER_INTERNET_TITLE_VALUE =
//               element.contenu;
//         } else if (element.code ==
//             DOMOTIQUE_PAGE_ELIGIBILITE_FACTURE_IMPAYER_INTERNET_DESC) {
//           DOMOTIQUE_PAGE_ELIGIBILITE_FACTURE_IMPAYER_INTERNET_DESC_VALUE =
//               element.contenu;
//         } else if (element.code == DOMOTIQUE_PAGE_PRESENTATION_SUBTITLE) {
//           DOMOTIQUE_PAGE_PRESENTATION_SUBTITLE_VALUE = element.contenu;
//         } else if (element.code == CHANGER_OFFRE_ERROR_TEXT) {
//           CHANGER_OFFRE_ERROR_TEXT_VALUE = element.contenu;
//         } else if (element.code == UPDATE_APP_PROFIL_TEXT) {
//           UPDATE_APP_PROFIL_TEXT_VALUE = element.contenu;
//         } else if (element.code == PROFIL_UPDATE_DISPONIBLE) {
//           PROFIL_UPDATE_DISPONIBLE_VALUE = element.contenu;
//         } else if (element.code == PROFIL_UPDATE_APPBAR_TITLE) {
//           PROFIL_UPDATE_APPBAR_TITLE_VALUE = element.contenu;
//         } else if (element.code == PLATFORM_DIALOG_STATUS_NOT_AVAILABLE) {
//           PLATFORM_DIALOG_STATUS_NOT_AVAILABLE_VALUE = element.contenu;
//         } else if (element.code == PLATFORM_DIALOG_PAYER_ICI) {
//           PLATFORM_DIALOG_PAYER_ICI_VALUE = element.contenu;
//         } else if (element.code ==
//             PLATFORM_DIALOG_ELIGIBILITE_FIBRE_AVAILABLE) {
//           PLATFORM_DIALOG_ELIGIBILITE_FIBRE_AVAILABLE_VALUE = element.contenu;
//         } else if (element.code ==
//             PLATFORM_DIALOG_ELIGIBILITE_FIBRE_NOTAVAILABLE) {
//           PLATFORM_DIALOG_ELIGIBILITE_FIBRE_NOTAVAILABLE_VALUE =
//               element.contenu;
//         } else if (element.code == PLATFORM_DIALOG_ELIGIBILITE_MARKET_ONLINE) {
//           PLATFORM_DIALOG_ELIGIBILITE_MARKET_ONLINE_VALUE = element.contenu;
//         } else if (element.code == SIGNALER_TEL) {
//           SIGNALER_TEL_VALUE = element.contenu;
//         } else if (element.code == HOME_SETTING_PANEL_ABONNEMENT) {
//           HOME_SETTING_PANEL_ABONNEMENT_VALUE = element.contenu;
//         }

//         ////
//         //// UBERISATION
//         ////

//         else if (element.code == UBER_DIAGNOSTIC_TEXT) {
//           UBER_DIAGNOSTIC_TEXT_VALUE = element.contenu;
//         } else if (element.code == UBER_DISPONIBILITE_PAGE_TITRE) {
//           UBER_DISPONIBILITE_PAGE_TITRE_VALUE = element.contenu;
//         } else if (element.code == UBER_DISPONIBILITE_FORM_TITLE) {
//           UBER_DISPONIBILITE_FORM_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_DISPONIBILITE_FORM_MOTIF) {
//           UBER_DISPONIBILITE_FORM_MOTIF_VALUE = element.contenu;
//         } else if (element.code == UBER_DISPONIBILITE_FORM_MOTIF_DESC) {
//           UBER_DISPONIBILITE_FORM_MOTIF_DESC_VALUE = element.contenu;
//         } else if (element.code == UBER_DISPONIBILITE_FORM_COMMENTAIRE) {
//           UBER_DISPONIBILITE_FORM_COMMENTAIRE_VALUE = element.contenu;
//         } else if (element.code == UBER_DISPONIBILITE_BTN_LOCATE) {
//           UBER_DISPONIBILITE_BTN_LOCATE_VALUE = element.contenu;
//         }
// // ... (et ainsi de suite pour tous les autres éléments)

//         else if (element.code == UBER_SEARCH_ADDRESS_TITLE) {
//           UBER_SEARCH_ADDRESS_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_ADDRESS_SUBTILE) {
//           UBER_ADDRESS_SUBTILE_VALUE = element.contenu;
//         } else if (element.code == UBER_SEARCH_ADDRESS_BTN) {
//           UBER_SEARCH_ADDRESS_BTN_VALUE = element.contenu;
//         } else if (element.code == UBER_TECHNICIAN_SEARCH) {
//           UBER_TECHNICIAN_SEARCH_VALUE = element.contenu;
//         } else if (element.code == UBER_ADD_DISPONIBILITE_PAGE_TITLE) {
//           UBER_ADD_DISPONIBILITE_PAGE_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_ADD_DISPONIBILITE_TITLE) {
//           UBER_ADD_DISPONIBILITE_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_ADD_DISPONIBILITE_NOW) {
//           UBER_ADD_DISPONIBILITE_NOW_VALUE = element.titre;
//           UBER_ADD_DISPONIBILITE_NOW_DESC_VALUE = element.contenu;
//         } else if (element.code == UBER_ADD_DISPONIBILITE_ANOTHER) {
//           UBER_ADD_DISPONIBILITE_ANOTHER_VALUE = element.contenu;
//         } else if (element.code == UBER_ADD_DISPONIBILITE_AMOUNT_TITLE) {
//           UBER_ADD_DISPONIBILITE_AMOUNT_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_ADD_DISPONIBILITE_AMOUNT_FREE) {
//           UBER_ADD_DISPONIBILITE_AMOUNT_FREE_VALUE = element.contenu;
//         } else if (element.code == UBER_ADD_DISPONIBILITE_BTN) {
//           UBER_ADD_DISPONIBILITE_BTN_VALUE = element.contenu;
//         } else if (element.code == UBER_TECHNICIAN_NOT_FOUND_ERROR_TITLE) {
//           UBER_TECHNICIAN_NOT_FOUND_ERROR_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_TECHNICIAN_NOT_FOUND_ERROR_DESC) {
//           UBER_TECHNICIAN_NOT_FOUND_ERROR_DESC_VALUE = element.contenu;
//         } else if (element.code == UBER_TECHNICIAN_NOT_FOUND_BTN_PROPOSITION) {
//           UBER_TECHNICIAN_NOT_FOUND_BTN_PROPOSITION_VALUE = element.contenu;
//         } else if (element.code ==
//             UBER_TECHNICIAN_NOT_FOUND_PROPOSITION_TITLE) {
//           UBER_TECHNICIAN_NOT_FOUND_PROPOSITION_TITLE_VALUE = element.contenu;
//         } else if (element.code ==
//             UBER_TECHNICIAN_NOT_FOUND_PROPOSITION_SUBTITLE) {
//           UBER_TECHNICIAN_NOT_FOUND_PROPOSITION_SUBTITLE_VALUE =
//               element.contenu;
//         } else if (element.code == UBER_TECHNICIAN_FOUND_TITLE) {
//           UBER_TECHNICIAN_FOUND_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_TECHNICIAN_FOUND_PRESTATION_TITLE) {
//           UBER_TECHNICIAN_FOUND_PRESTATION_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_PAIEMENT_PAGE_TITLE) {
//           UBER_PAIEMENT_PAGE_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_PAIEMENT_TITLE) {
//           UBER_PAIEMENT_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_PAIEMENT_HINTEXT_NUMBER) {
//           UBER_PAIEMENT_HINTEXT_NUMBER_VALUE = element.contenu;
//         } else if (element.code == UBER_PAIEMENT_BTN) {
//           UBER_PAIEMENT_BTN_VALUE = element.contenu;
//         } else if (element.code == UBER_PAIEMENT_OTP_PAGE_TITLE) {
//           UBER_PAIEMENT_OTP_PAGE_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_PAIEMENT_OTP_TITLE) {
//           UBER_PAIEMENT_OTP_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_PAIEMENT_OTP_BTN_CONFIRM) {
//           UBER_PAIEMENT_OTP_BTN_CONFIRM_VALUE = element.contenu;
//         } else if (element.code == UBER_CONGRAT_TITLE) {
//           UBER_CONGRAT_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_RETOUR_MENU) {
//           UBER_RETOUR_MENU_VALUE = element.contenu;
//         } else if (element.code == UBER_SUIVI_TRAJET_PAGE_TITLE) {
//           UBER_SUIVI_TRAJET_PAGE_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_ANNULER_COMMAND) {
//           UBER_ANNULER_COMMAND_VALUE = element.contenu;
//         } else if (element.code == UBER_NOTATION_TITLE) {
//           UBER_NOTATION_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_NOTATION_SUBTITLE) {
//           UBER_NOTATION_SUBTITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_POPUP_AUTRE_RENDEZ_VOUS) {
//           UBER_POPUP_AUTRE_RENDEZ_VOUS_VALUE = element.contenu;
//         } else if (element.code == UBER_NOTATION_FIN_INTERVENTION_TITLE) {
//           UBER_NOTATION_FIN_INTERVENTION_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_NOTATION_HINTEXT_DESC) {
//           UBER_NOTATION_HINTEXT_DESC_VALUE = element.contenu;
//         } else if (element.code == UBER_NOTATION_QUESTION_1) {
//           UBER_NOTATION_QUESTION_1_VALUE = element.contenu;
//         } else if (element.code == UBER_NOTATION_QUESTION_2) {
//           UBER_NOTATION_QUESTION_2_VALUE = element.contenu;
//         } else if (element.code == UBER_NOTATION_QUESTION_3) {
//           UBER_NOTATION_QUESTION_3_VALUE = element.contenu;
//         } else if (element.code == UBER_NOTATION_QUESTION_4) {
//           UBER_NOTATION_QUESTION_4_VALUE = element.contenu;
//         } else if (element.code == UBER_NOTATION_QUESTION_5) {
//           UBER_NOTATION_QUESTION_5_VALUE = element.contenu;
//         } else if (element.code == UBER_TRACKING_PAGE_TITLE) {
//           UBER_TRACKING_PAGE_TITLE_VALUE = element.contenu;
//         } else if (element.code == UBER_TRACKING_NCOMMAND) {
//           UBER_TRACKING_NCOMMAND_VALUE = element.contenu;
//         } else if (element.code == UBER_TRACKING_NDETAIL_COMMAND) {
//           UBER_TRACKING_NDETAIL_COMMAND_VALUE = element.contenu;
//         } else if (element.code == DEACTIVE_DEEP_LINK) {
//           DEACTIVE_DEEP_LINK_VALUE = element.contenu;
//         }

//         ///HOME_SETTING_PANEL_ABONNEMENT DEACTIVE_DEEP_LINK
//       }
//     } else if (request is Left<Failure, List<ParametreGlobalResponse>>) {
//       ERROR_GLOBAL_CODE_VALUE = request.value;
//     } else {
//       ERROR_GLOBAL_CODE_VALUE = const InternalFailure();
//     }
//   }
// }
