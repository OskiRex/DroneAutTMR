
"use strict";

let RCIn = require('./RCIn.js');
let GPSINPUT = require('./GPSINPUT.js');
let HomePosition = require('./HomePosition.js');
let ESCTelemetry = require('./ESCTelemetry.js');
let BatteryStatus = require('./BatteryStatus.js');
let ExtendedState = require('./ExtendedState.js');
let OnboardComputerStatus = require('./OnboardComputerStatus.js');
let MagnetometerReporter = require('./MagnetometerReporter.js');
let Altitude = require('./Altitude.js');
let TimesyncStatus = require('./TimesyncStatus.js');
let ESCInfoItem = require('./ESCInfoItem.js');
let HilGPS = require('./HilGPS.js');
let ADSBVehicle = require('./ADSBVehicle.js');
let ESCStatus = require('./ESCStatus.js');
let State = require('./State.js');
let AttitudeTarget = require('./AttitudeTarget.js');
let RTCM = require('./RTCM.js');
let RCOut = require('./RCOut.js');
let DebugValue = require('./DebugValue.js');
let WaypointList = require('./WaypointList.js');
let LogEntry = require('./LogEntry.js');
let WaypointReached = require('./WaypointReached.js');
let StatusText = require('./StatusText.js');
let Tunnel = require('./Tunnel.js');
let Mavlink = require('./Mavlink.js');
let ESCTelemetryItem = require('./ESCTelemetryItem.js');
let GlobalPositionTarget = require('./GlobalPositionTarget.js');
let GPSRTK = require('./GPSRTK.js');
let TerrainReport = require('./TerrainReport.js');
let MountControl = require('./MountControl.js');
let VFR_HUD = require('./VFR_HUD.js');
let LogData = require('./LogData.js');
let ActuatorControl = require('./ActuatorControl.js');
let PositionTarget = require('./PositionTarget.js');
let ESCInfo = require('./ESCInfo.js');
let PlayTuneV2 = require('./PlayTuneV2.js');
let Trajectory = require('./Trajectory.js');
let Param = require('./Param.js');
let Vibration = require('./Vibration.js');
let ParamValue = require('./ParamValue.js');
let Thrust = require('./Thrust.js');
let CamIMUStamp = require('./CamIMUStamp.js');
let LandingTarget = require('./LandingTarget.js');
let CompanionProcessStatus = require('./CompanionProcessStatus.js');
let HilControls = require('./HilControls.js');
let NavControllerOutput = require('./NavControllerOutput.js');
let FileEntry = require('./FileEntry.js');
let HilActuatorControls = require('./HilActuatorControls.js');
let HilStateQuaternion = require('./HilStateQuaternion.js');
let CellularStatus = require('./CellularStatus.js');
let WheelOdomStamped = require('./WheelOdomStamped.js');
let Waypoint = require('./Waypoint.js');
let HilSensor = require('./HilSensor.js');
let OverrideRCIn = require('./OverrideRCIn.js');
let OpticalFlowRad = require('./OpticalFlowRad.js');
let GPSRAW = require('./GPSRAW.js');
let RTKBaseline = require('./RTKBaseline.js');
let CameraImageCaptured = require('./CameraImageCaptured.js');
let RadioStatus = require('./RadioStatus.js');
let ESCStatusItem = require('./ESCStatusItem.js');
let ManualControl = require('./ManualControl.js');
let CommandCode = require('./CommandCode.js');
let VehicleInfo = require('./VehicleInfo.js');
let EstimatorStatus = require('./EstimatorStatus.js');

module.exports = {
  RCIn: RCIn,
  GPSINPUT: GPSINPUT,
  HomePosition: HomePosition,
  ESCTelemetry: ESCTelemetry,
  BatteryStatus: BatteryStatus,
  ExtendedState: ExtendedState,
  OnboardComputerStatus: OnboardComputerStatus,
  MagnetometerReporter: MagnetometerReporter,
  Altitude: Altitude,
  TimesyncStatus: TimesyncStatus,
  ESCInfoItem: ESCInfoItem,
  HilGPS: HilGPS,
  ADSBVehicle: ADSBVehicle,
  ESCStatus: ESCStatus,
  State: State,
  AttitudeTarget: AttitudeTarget,
  RTCM: RTCM,
  RCOut: RCOut,
  DebugValue: DebugValue,
  WaypointList: WaypointList,
  LogEntry: LogEntry,
  WaypointReached: WaypointReached,
  StatusText: StatusText,
  Tunnel: Tunnel,
  Mavlink: Mavlink,
  ESCTelemetryItem: ESCTelemetryItem,
  GlobalPositionTarget: GlobalPositionTarget,
  GPSRTK: GPSRTK,
  TerrainReport: TerrainReport,
  MountControl: MountControl,
  VFR_HUD: VFR_HUD,
  LogData: LogData,
  ActuatorControl: ActuatorControl,
  PositionTarget: PositionTarget,
  ESCInfo: ESCInfo,
  PlayTuneV2: PlayTuneV2,
  Trajectory: Trajectory,
  Param: Param,
  Vibration: Vibration,
  ParamValue: ParamValue,
  Thrust: Thrust,
  CamIMUStamp: CamIMUStamp,
  LandingTarget: LandingTarget,
  CompanionProcessStatus: CompanionProcessStatus,
  HilControls: HilControls,
  NavControllerOutput: NavControllerOutput,
  FileEntry: FileEntry,
  HilActuatorControls: HilActuatorControls,
  HilStateQuaternion: HilStateQuaternion,
  CellularStatus: CellularStatus,
  WheelOdomStamped: WheelOdomStamped,
  Waypoint: Waypoint,
  HilSensor: HilSensor,
  OverrideRCIn: OverrideRCIn,
  OpticalFlowRad: OpticalFlowRad,
  GPSRAW: GPSRAW,
  RTKBaseline: RTKBaseline,
  CameraImageCaptured: CameraImageCaptured,
  RadioStatus: RadioStatus,
  ESCStatusItem: ESCStatusItem,
  ManualControl: ManualControl,
  CommandCode: CommandCode,
  VehicleInfo: VehicleInfo,
  EstimatorStatus: EstimatorStatus,
};
