export function detectHit(pose: any, ball: any) {
  'worklet'

  if (!pose || !ball) return false

  // Example logic (expand later)
  const handNearBall = true // replace with distance calc
  const velocitySpike = true

  return handNearBall && velocitySpike
}