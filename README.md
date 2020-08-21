
# react-native-recallscreen

## Getting started

`$ npm install react-native-recallscreen --save`

### Mostly automatic installation

`$ react-native link react-native-recallscreen`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-recallscreen` and add `RNRecallscreen.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNRecallscreen.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.newtouch.screen.RNRecallscreenPackage;` to the imports at the top of the file
  - Add `new RNRecallscreenPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-recallscreen'
  	project(':react-native-recallscreen').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-recallscreen/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-recallscreen')
  	```


## Usage
```javascript
import RNRecallscreen from 'react-native-recallscreen';

// TODO: What to do with the module?
RNRecallscreen;
```
  