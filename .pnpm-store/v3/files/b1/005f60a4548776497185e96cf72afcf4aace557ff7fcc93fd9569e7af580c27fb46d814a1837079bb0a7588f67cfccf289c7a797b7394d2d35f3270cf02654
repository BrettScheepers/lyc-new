import { n as nodeHTTPRequestHandler } from '../nodeHTTPRequestHandler-12223ae5.mjs';
import '../resolveHTTPResponse-1829da6c.mjs';
import '../config-1bc170ad.mjs';
import '../TRPCError-802c850e.mjs';
import '../codes-52c11119.mjs';
import '../index-972002da.mjs';
import '../transformTRPCResponse-7a73a2df.mjs';

function createExpressMiddleware(opts) {
    return async (req, res)=>{
        const endpoint = req.path.slice(1);
        await nodeHTTPRequestHandler({
            ...opts,
            req,
            res,
            path: endpoint
        });
    };
}

export { createExpressMiddleware };
