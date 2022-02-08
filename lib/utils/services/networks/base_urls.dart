// const String kSelectedStage = 'dev';
const Stages kSelectedStage = Stages.dev;
// const String kSelectedStage = 'prod';

enum Stages {
  prod,
  staging,
  dev,
}

class BaseUrls {
  static String get url {
    if (kSelectedStage == Stages.dev) {
      return '';
    } else if (kSelectedStage == Stages.staging) {
      return '';
    } else {
      return '';
    }
  }
}
