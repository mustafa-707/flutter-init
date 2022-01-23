// const String kSelectedStage = 'dev';
const Stages kSelectedStage = Stages.dev;
// const String kSelectedStage = 'prod';

enum Stages{
  prod,
  staging,
  dev,
}

class BaseUrls {
  static String get url {
    if (kSelectedStage == Stages.dev) {
      return 'https://api-uat.fire-beef.com/';
    } else if (kSelectedStage == Stages.staging) {
      return 'https://api-dev.fire-beef.com/';
    } else {
      return 'https://api-prod.fire-beef.com/';
    }
  }
}
