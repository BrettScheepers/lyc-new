import jwt, { JwtPayload } from "jsonwebtoken";

function validateToken(authToken: string | undefined) {
  if (authToken === undefined) return;
  return jwt.verify(
    authToken,
    process.env.ACCESS_TOKEN as string
  ) as JwtPayload;
}

export { validateToken };
