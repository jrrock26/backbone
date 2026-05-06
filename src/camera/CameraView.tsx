import React from 'react'
import { StyleSheet } from 'react-native'
import { Camera, useCameraDevice, useFrameProcessor } from 'react-native-vision-camera'
import { frameProcessor } from '../processors/frameProcessor'

export default function CameraView() {
  const device = useCameraDevice('back')

  const processor = useFrameProcessor((frame) => {
    'worklet'
    frameProcessor(frame)
  }, [])

  if (!device) return null

  return (
    <Camera
      style={StyleSheet.absoluteFill}
      device={device}
      isActive={true}
      frameProcessor={processor}
    />
  )
}