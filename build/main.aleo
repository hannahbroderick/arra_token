program arra_token.aleo;

record Token:
    owner as address.private;
    balance as u32.private;


function mint:
    input r0 as u32.private;
    assert.eq self.caller aleo1g64khdvelnrhewlucyzqftycys2jsx8kl8x798n6dc59hd5as58sum3y95;
    cast self.caller r0 into r1 as Token.record;
    output r1 as Token.record;


function transfer:
    input r0 as address.private;
    input r1 as u32.private;
    input r2 as Token.record;
    lte r1 r2.balance into r3;
    assert.eq r3 true;
    sub r2.balance r1 into r4;
    cast r0 r1 into r5 as Token.record;
    cast self.caller r4 into r6 as Token.record;
    output r6 as Token.record;
    output r5 as Token.record;
