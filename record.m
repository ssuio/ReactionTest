function r = record(trialNo, blockNo, trialType, arrowDirection, delayTime, btnOfResponse, responseTime)
    r = sprintf('%d, %d, %d, %d, %d, %d, %d\n', trialNo, blockNo, trialType, arrowDirection, delayTime, btnOfResponse,responseTime);
end