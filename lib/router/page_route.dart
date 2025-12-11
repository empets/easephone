abstract class PageRoutes {


  static const String spashScreen = '/'; // sign in & sign up page




  
  ///
  /// LOGIN & AUTHENTICATION
  ///

  static const String onbard = '/onboard'; // onboarding page
  static const String signin = '/onboard/signin'; // signin
  static const String signup = '/onboard/signin/signup'; // signup
  static const String signForgotPassword = '/onboard/signin/signForgotPassword'; // forgot assword
 
  static const String attachmentFibre = '/auth/attachment-fibre';
  static const String otp = '/auth/attachment-otp';

  static const String eligibility = '/request/eligibility';
  static const String orderTracking = '/request/orderTracking';
  static const String pinpad = '/payment/pinpad';


    static const String offre = '/home/offre'; //PayerFacturePage
    static const String changeOffer = '/home/change-my-offer'; //PayerFacturePage


    ///MES. DEMANDE
    ///
    
    static const String reclamation = '/home/mes-demandes/reclamation';



  // pages
  static const String home =
      '/home'; // default location //MesDemandeOverViewPage
  static const String mesDemande =
      '/mes-demande'; // default location //MesDemandeOverViewPage
  static const String notificationList =
      '/notification/list'; // default location
  static const String notificationListDerco =
      '/notification/derco/list'; // default location
  static const String testDebit = '/home/testdebit'; // default location
  static const String profile = '/home/profile'; // default location
  static const String aboutUs = '/home/about_us'; // default location
//   static const String spashScreen = '/'; // sign in & sign up page
  // static const String signin = '/signin'; // sign in & sign up page
  static const String signinOtp = '/signin/otp';
  static const String signinOtpVerif = '/signin/otp/verif';

  static const String attachmentContract = '/contrat'; //GeoLocalisationPage
  static const String mapScreen = '/contrat/map'; //GeoLocalisationPage
  static const String rattachementManuelScreen =
      '/contrat/rattachementManuel'; //GeoLocalisationPage
  static const String scan = '/scanner'; //GeoLocalisationPage
  static const String contactUs = '/contactUs'; //PayerFacturePage
  static const String facture = '/home/factures'; //PayerFacturePage



  static const String abonnement = '/home/list-abonnement';
  static const String modifierAabonnement = '/home/abonnement/modif';

  static const String profilDelete = '/home/profil/delete';
  static const String profilMaj = '/home/profil/maj';

  static const String historieDesDemande = '/home/mes-demandes/historie-des-demandes';

  static const String otpVerification = '/mes-demandes/demenage/otp';
  static const String testCouvertureWifiPage = '/home/test-couverture';

  static const String uberisation =
      '/home/mes-demandes/uberisation'; //GetAddressByMapPage
  static const String addressMapUberi =
      '/home/mes-demandes/uberisation/getAdreese'; //GetAddressByMapPage
  static const String trackingIntervention =
      '/home/mes-demandes/uberisation/tracking-intervention'; //GetAddressByMapPage
  static const String uberisationProduction =
      '/home/uberisation-production'; //GetAddressByMapPage
  static const String uberisationProductionConnexion =
      '/home/uberisation-production/connexion'; //GetAddressByMapPage
  static const String mainCommunauteFibre =
      '/home/mes-demandes/uberisation/commaute-fibre'; //GetAddressByMapPage

  static const String detailWlan = '/detail-wlan'; //GetAddressByMapPage
  static const String diagnostic = '/detail-diagnostic'; //GetAddressByMapPage
  static const String fidelity = '/detail-fidelity'; //GetAddressByMapPage
  static const String factures = '/detail-invoices'; //GetAddressByMapPage
  static const String sponsorship = '/sponsorship'; //GetAddressByMapPage
  static const String demandes = '/mes-demandes'; //GetAddressByMapPage
}
