
"use strict";

let WaypointPull = require('./WaypointPull.js')
let StreamRate = require('./StreamRate.js')
let VehicleInfoGet = require('./VehicleInfoGet.js')
let SetMode = require('./SetMode.js')
let CommandLong = require('./CommandLong.js')
let CommandTriggerControl = require('./CommandTriggerControl.js')
let CommandBool = require('./CommandBool.js')
let FileRead = require('./FileRead.js')
let LogRequestEnd = require('./LogRequestEnd.js')
let FileMakeDir = require('./FileMakeDir.js')
let FileRemoveDir = require('./FileRemoveDir.js')
let WaypointPush = require('./WaypointPush.js')
let FileRemove = require('./FileRemove.js')
let MountConfigure = require('./MountConfigure.js')
let CommandHome = require('./CommandHome.js')
let LogRequestList = require('./LogRequestList.js')
let FileRename = require('./FileRename.js')
let CommandInt = require('./CommandInt.js')
let ParamPush = require('./ParamPush.js')
let ParamGet = require('./ParamGet.js')
let FileList = require('./FileList.js')
let FileTruncate = require('./FileTruncate.js')
let CommandVtolTransition = require('./CommandVtolTransition.js')
let CommandTriggerInterval = require('./CommandTriggerInterval.js')
let WaypointSetCurrent = require('./WaypointSetCurrent.js')
let FileChecksum = require('./FileChecksum.js')
let FileClose = require('./FileClose.js')
let WaypointClear = require('./WaypointClear.js')
let LogRequestData = require('./LogRequestData.js')
let MessageInterval = require('./MessageInterval.js')
let FileOpen = require('./FileOpen.js')
let ParamPull = require('./ParamPull.js')
let SetMavFrame = require('./SetMavFrame.js')
let FileWrite = require('./FileWrite.js')
let CommandAck = require('./CommandAck.js')
let CommandTOL = require('./CommandTOL.js')
let ParamSet = require('./ParamSet.js')

module.exports = {
  WaypointPull: WaypointPull,
  StreamRate: StreamRate,
  VehicleInfoGet: VehicleInfoGet,
  SetMode: SetMode,
  CommandLong: CommandLong,
  CommandTriggerControl: CommandTriggerControl,
  CommandBool: CommandBool,
  FileRead: FileRead,
  LogRequestEnd: LogRequestEnd,
  FileMakeDir: FileMakeDir,
  FileRemoveDir: FileRemoveDir,
  WaypointPush: WaypointPush,
  FileRemove: FileRemove,
  MountConfigure: MountConfigure,
  CommandHome: CommandHome,
  LogRequestList: LogRequestList,
  FileRename: FileRename,
  CommandInt: CommandInt,
  ParamPush: ParamPush,
  ParamGet: ParamGet,
  FileList: FileList,
  FileTruncate: FileTruncate,
  CommandVtolTransition: CommandVtolTransition,
  CommandTriggerInterval: CommandTriggerInterval,
  WaypointSetCurrent: WaypointSetCurrent,
  FileChecksum: FileChecksum,
  FileClose: FileClose,
  WaypointClear: WaypointClear,
  LogRequestData: LogRequestData,
  MessageInterval: MessageInterval,
  FileOpen: FileOpen,
  ParamPull: ParamPull,
  SetMavFrame: SetMavFrame,
  FileWrite: FileWrite,
  CommandAck: CommandAck,
  CommandTOL: CommandTOL,
  ParamSet: ParamSet,
};
