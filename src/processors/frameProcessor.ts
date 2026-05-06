import { detectHit } from '../analytics/hitDetection'
import { runBallModel } from '../ml/ballModel'
import { runPoseModel } from '../ml/poseModel'

export function frameProcessor(frame: any) {
  'worklet'

  const pose = runPoseModel(frame)
  const ball = runBallModel(frame)

  const hit = detectHit(pose, ball)

  return { pose, ball, hit }
}