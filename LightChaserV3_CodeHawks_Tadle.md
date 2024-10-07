## LightChaser-V3

### Generated for: CodeHawks : Tadle

### Generated on: 2024-08-05

## Total findings: 90

### Total Medium findings: 4

### Total Low findings: 28

### Total Gas findings: 27

### Total NonCritical findings: 31

# Summary for Medium findings

| Number | Details | Instances |
|----------|----------|----------|
| [Medium-1] | Privileged functions can create points of failure | 12 |
| [Medium-2] | Using transfer functions to a payable address | 1 |
| [Medium-3] | Contract contains payable functions but no withdraw/sweep function | 1 |
| [Medium-4] | isContract is not a reliable way to determine if a address is a EOA or contract | 1 |
# Summary for Low findings

| Number | Details | Instances |
|----------|----------|----------|
| [Low-1] | Gas grief possible on unsafe external calls  | 1 |
| [Low-2] | Missing checks for address(0x0) when updating address state variables  | 6 |
| [Low-3] | Avoid making withdraw/unstake functions Pausable  | 1 |
| [Low-4] | Solidity version 0.8.23 won't work on all chains due to MCOPY  | 1 |
| [Low-5] | The call abi.encodeWithSelector is not type safe | 2 |
| [Low-6] | Missing zero address check in constructor | 1 |
| [Low-7] | Using zero as a parameter | 2 |
| [Low-8] | Critical functions should be a two step procedure | 7 |
| [Low-9] | Remaining eth may not be refunded to users | 5 |
| [Low-10] | Return values not checked for approve() | 1 |
| [Low-11] | Incorrect withdraw declaration | 1 |
| [Low-12] | Events may be emitted out of order due to code not follow the best practice of check-effects-interaction | 1 |
| [Low-13] | Missing zero address check in initializer | 1 |
| [Low-14] | Critical functions should have a timelock | 2 |
| [Low-15] | Missing contract-existence checks before low-level calls | 1 |
| [Low-16] | Low Level Calls to Custom Addresses | 1 |
| [Low-17] | Constructors missing validation | 1 |
| [Low-18] | Inconsistent use of _msgSender() and msg.sender in contract | 3 |
| [Low-19] | State variables not capped at reasonable values | 3 |
| [Low-20] | Use forceApprove in place of approve | 1 |
| [Low-21] | Functions calling contracts/addresses with transfer hooks are missing reentrancy guards | 4 |
| [Low-22] | Solidity version 0.8.20 won't work on all chains due to PUSH0 | 1 |
| [Low-23] | Missing events in functions that are either setters, privileged or voting related | 5 |
| [Low-24] | Indexed strings/bytes in events can result in data loss | 2 |
| [Low-25] | Avoid floating pragma in non interface/library files | 11 |
| [Low-26] | Solidity version 0.8.20 won't work on all chains due to PUSH0 | 1 |
| [Low-27] | Read only reentrancy risk detected | 9 |
| [Low-28] | Project contains upgradeable base contracts with `__gap` variables however there also exists base contracts which are not upgradeable and do not implement `__gap` variables | 1 |
# Summary for NonCritical findings

| Number | Details | Instances |
|----------|----------|----------|
| [NonCritical-1] | Unsafe use of transfer()/transferFrom() with IERC20 | 1 |
| [NonCritical-2] | Floating pragma should be avoided | 1 |
| [NonCritical-3] | In functions which accept an address as a parameter, there should be a zero address check to prevent bugs | 27 |
| [NonCritical-4] | Default int values are manually set | 1 |
| [NonCritical-5] | Revert statements within external and public functions can be used to perform DOS attacks | 18 |
| [NonCritical-6] | Reverts should use custom errors instead of strings | 1 |
| [NonCritical-7] | Functions which are either private or internal should have a preceding _ in their name | 5 |
| [NonCritical-8] | Private and internal state variables should have a preceding _ in their name unless they are constants | 1 |
| [NonCritical-9] | Avoid updating storage when the value hasn't changed | 4 |
| [NonCritical-10] | Specific imports should be used where possible so only used code is imported | 1 |
| [NonCritical-11] | Old Solidity version | 1 |
| [NonCritical-12] | Contracts should have all public/external functions exposed by interfaces | 36 |
| [NonCritical-13] | A function which defines named returns in it's declaration doesn't need to use return | 1 |
| [NonCritical-14] | Constants should be on the left side of the comparison | 12 |
| [NonCritical-15] | Defined named returns not used within function  | 1 |
| [NonCritical-16] | Initialize functions do not emit an event | 2 |
| [NonCritical-17] | Empty bytes check is missing | 1 |
| [NonCritical-18] | Whitespace in expressions | 1 |
| [NonCritical-19] | call bypasses function existence check, type checking and argument packing | 1 |
| [NonCritical-20] | Cyclomatic complexity in functions | 14 |
| [NonCritical-21] | Unused import | 1 |
| [NonCritical-22] | Missing events in sensitive functions | 3 |
| [NonCritical-23] | Contracts with only unimplemented functions can be labeled as abstract | 5 |
| [NonCritical-24] | A event should be emitted if a non immutable state variable is set in a constructor | 1 |
| [NonCritical-25] | Non constant/immutable state variables are missing a setter post deployment | 1 |
| [NonCritical-26] | Use 'using' keyword when using specific imports rather than calling the specific import directly | 17 |
| [NonCritical-27] | Constructors should emit an event | 1 |
| [NonCritical-28] | Contract and Abstract files should have a fixed compiler version | 11 |
| [NonCritical-29] | Errors should have parameters | 17 |
| [NonCritical-30] | Consider using OpenZeppelins SafeCall library when making calls to arbitrary contracts | 1 |
| [NonCritical-31] | Unnecessary struct attribute prefix | 2 |
# Summary for Gas findings

| Number | Details | Instances | Gas |
|----------|----------|----------|----------|
| [Gas-1] | Calldata should be used in place of memory function parameters when not mutated | 1 | 13 |
| [Gas-2] | Usage of smaller uint/int types causes overhead | 3 | 495 |
| [Gas-3] | Use != 0 instead of > 0 | 2 | 12 |
| [Gas-4] | Default int values are manually reset | 1 | 0.0 |
| [Gas-5] | Function calls within for loops | 2 | 0.0 |
| [Gas-6] | For loops in public or external functions should be avoided due to high gas costs and possible DOS | 1 | 0.0 |
| [Gas-7] | Use assembly to check for the zero address | 11 | 0.0 |
| [Gas-8] | Redundant state variable getters | 1 | 0.0 |
| [Gas-9] | Structs can be packed into fewer storage slots | 6 | 90000 |
| [Gas-10] | Don't use _msgSender() if not supporting EIP-2771 | 51 | 41616 |
| [Gas-11] | Consider using OZ EnumerateSet in place of nested mappings | 1 | 1000 |
| [Gas-12] | Use assembly to emit events | 26 | 25688 |
| [Gas-13] | Use solady library where possible to save gas | 1 | 1000 |
| [Gas-14] | Mark Functions That Revert For Normal Users As payable | 10 | 2500 |
| [Gas-15] | Using nested if to save gas | 6 | 216 |
| [Gas-16] | Low level call can be optimized with assembly | 3 | 2232 |
| [Gas-17] | Inline modifiers used only once | 2 | 0.0 |
| [Gas-18] | Solidity versions 0.8.19 and above are more gas efficient | 1 | 1000 |
| [Gas-19] | Internal functions only used once can be inlined to save gas | 4 | 480 |
| [Gas-20] | Constructors can be marked as payable to save deployment gas | 3 | 0.0 |
| [Gas-21] | Assigning to structs can be more efficient | 3 | 1170 |
| [Gas-22] | Only emit event in setter function if the state variable was changed | 5 | 0.0 |
| [Gas-23] | Use OZ Array.unsafeAccess() to avoid repeated array length checks | 1 | 2100 |
| [Gas-24] | Consider pre-calculating the address of address(this) to save gas | 4 | 0.0 |
| [Gas-25] | Use 'storage' instead of 'memory' for struct/array state variables | 1 | 2100 |
| [Gas-26] | Use constants instead of type(uint<n>).max | 1 | 0.0 |
| [Gas-27] | Using named returns for pure and view functions is cheaper than using regular returns | 10 | 2600 |
## [Medium-1] Privileged functions can create points of failure

### Resolution 
Ensure such accounts are protected and consider implementing multi sig to prevent a single point of failure

Num of instances: 12

### Findings 


<details><summary>Click to show findings</summary>

['[25](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L25-L28)']
```solidity
25:     function initialize(
26:         uint256 _basePlatformFeeRate,
27:         uint256 _baseReferralRate
28:     ) external onlyOwner  // <= FOUND
```
['[90](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L90-L93)']
```solidity
90:     function createMarketPlace(
91:         string calldata _marketPlaceName,
92:         bool _fixedratio
93:     ) external onlyOwner  // <= FOUND
```
['[120](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L120-L126)']
```solidity
120:     function updateMarket(
121:         string calldata _marketPlaceName,
122:         address _tokenAddress,
123:         uint256 _tokenPerPoint,
124:         uint256 _tge,
125:         uint256 _settlementPeriod
126:     ) external onlyOwner  // <= FOUND
```
['[160](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L160-L163)']
```solidity
160:     function updateMarketPlaceStatus(
161:         string calldata _marketPlaceName,
162:         MarketPlaceStatus _status
163:     ) external onlyOwner  // <= FOUND
```
['[179](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L179-L182)']
```solidity
179:     function updateUserPlatformFeeRate(
180:         address _accountAddress,
181:         uint256 _platformFeeRate
182:     ) external onlyOwner  // <= FOUND
```
['[199](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L199-L202)']
```solidity
199:     function updateReferralExtraRateMap(
200:         address _referrer,
201:         uint256 _extraRate
202:     ) external onlyOwner  // <= FOUND
```
['[43](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L43-L43)']
```solidity
43:     function initialize(address _wrappedNativeToken) external onlyOwner  // <= FOUND
```
['[197](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L197-L200)']
```solidity
197:     function updateTokenWhiteListed(
198:         address[] calldata _tokens,
199:         bool _isWhiteListed
200:     ) external onlyOwner  // <= FOUND
```
['[222](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L222-L254)']
```solidity
222:     function settleAskMaker(address _offer, uint256 _settledPoints) external {
223:         (
224:             OfferInfo memory offerInfo,
225:             MakerInfo memory makerInfo,
226:             MarketPlaceInfo memory marketPlaceInfo,
227:             MarketPlaceStatus status
228:         ) = getOfferInfo(_offer);
229: 
230:         if (_settledPoints > offerInfo.usedPoints) {
231:             revert InvalidPoints();
232:         }
233: 
234:         if (marketPlaceInfo.fixedratio) {
235:             revert FixedRatioUnsupported();
236:         }
237: 
238:         if (offerInfo.offerType == OfferType.Bid) {
239:             revert InvalidOfferType(OfferType.Ask, OfferType.Bid);
240:         }
241: 
242:         if (
243:             offerInfo.offerStatus != OfferStatus.Virgin &&
244:             offerInfo.offerStatus != OfferStatus.Canceled
245:         ) {
246:             revert InvalidOfferStatus();
247:         }
248: 
249:         if (status == MarketPlaceStatus.AskSettling) {
250:             if (_msgSender() != offerInfo.authority) {
251:                 revert Errors.Unauthorized();
252:             }
253:         } else {
254:             if (_msgSender() != owner()) { // <= FOUND
255:                 revert Errors.Unauthorized();
256:             }
257:             if (_settledPoints > 0) {
258:                 revert InvalidPoints();
259:             }
260:         }
261: 
262:         uint256 settledPointTokenAmount = marketPlaceInfo.tokenPerPoint *
263:             _settledPoints;
264: 
265:         ITokenManager tokenManager = tadleFactory.getTokenManager();
266:         if (settledPointTokenAmount > 0) {
267:             tokenManager.tillIn(
268:                 _msgSender(),
269:                 marketPlaceInfo.tokenAddress,
270:                 settledPointTokenAmount,
271:                 true
272:             );
273:         }
274: 
275:         uint256 makerRefundAmount;
276:         if (_settledPoints == offerInfo.usedPoints) {
277:             if (offerInfo.offerStatus == OfferStatus.Virgin) {
278:                 makerRefundAmount = OfferLibraries.getDepositAmount(
279:                     offerInfo.offerType,
280:                     offerInfo.collateralRate,
281:                     offerInfo.amount,
282:                     true,
283:                     Math.Rounding.Floor
284:                 );
285:             } else {
286:                 uint256 usedAmount = offerInfo.amount.mulDiv(
287:                     offerInfo.usedPoints,
288:                     offerInfo.points,
289:                     Math.Rounding.Floor
290:                 );
291: 
292:                 makerRefundAmount = OfferLibraries.getDepositAmount(
293:                     offerInfo.offerType,
294:                     offerInfo.collateralRate,
295:                     usedAmount,
296:                     true,
297:                     Math.Rounding.Floor
298:                 );
299:             }
300: 
301:             tokenManager.addTokenBalance(
302:                 TokenBalanceType.SalesRevenue,
303:                 _msgSender(),
304:                 makerInfo.tokenAddress,
305:                 makerRefundAmount
306:             );
307:         }
308: 
309:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
310:         perMarkets.settledAskOffer(
311:             _offer,
312:             _settledPoints,
313:             settledPointTokenAmount
314:         );
315: 
316:         emit SettleAskMaker(
317:             makerInfo.marketPlace,
318:             offerInfo.maker,
319:             _offer,
320:             _msgSender(),
321:             _settledPoints,
322:             settledPointTokenAmount,
323:             makerRefundAmount
324:         );
325:     }
```
['[335](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L335-L365)']
```solidity
335:     function settleAskTaker(address _stock, uint256 _settledPoints) external {
336:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
337:         StockInfo memory stockInfo = perMarkets.getStockInfo(_stock);
338: 
339:         (
340:             OfferInfo memory offerInfo,
341:             MakerInfo memory makerInfo,
342:             MarketPlaceInfo memory marketPlaceInfo,
343:             MarketPlaceStatus status
344:         ) = getOfferInfo(stockInfo.preOffer);
345: 
346:         if (stockInfo.stockStatus != StockStatus.Initialized) {
347:             revert InvalidStockStatus();
348:         }
349: 
350:         if (marketPlaceInfo.fixedratio) {
351:             revert FixedRatioUnsupported();
352:         }
353:         if (stockInfo.stockType == StockType.Bid) {
354:             revert InvalidStockType();
355:         }
356:         if (_settledPoints > stockInfo.points) {
357:             revert InvalidPoints();
358:         }
359: 
360:         if (status == MarketPlaceStatus.AskSettling) {
361:             if (_msgSender() != offerInfo.authority) {
362:                 revert Errors.Unauthorized();
363:             }
364:         } else {
365:             if (_msgSender() != owner()) { // <= FOUND
366:                 revert Errors.Unauthorized();
367:             }
368:             if (_settledPoints > 0) {
369:                 revert InvalidPoints();
370:             }
371:         }
372: 
373:         uint256 settledPointTokenAmount = marketPlaceInfo.tokenPerPoint *
374:             _settledPoints;
375:         ITokenManager tokenManager = tadleFactory.getTokenManager();
376:         if (settledPointTokenAmount > 0) {
377:             tokenManager.tillIn(
378:                 _msgSender(),
379:                 marketPlaceInfo.tokenAddress,
380:                 settledPointTokenAmount,
381:                 true
382:             );
383: 
384:             tokenManager.addTokenBalance(
385:                 TokenBalanceType.PointToken,
386:                 offerInfo.authority,
387:                 makerInfo.tokenAddress,
388:                 settledPointTokenAmount
389:             );
390:         }
391: 
392:         uint256 collateralFee = OfferLibraries.getDepositAmount(
393:             offerInfo.offerType,
394:             offerInfo.collateralRate,
395:             stockInfo.amount,
396:             false,
397:             Math.Rounding.Floor
398:         );
399: 
400:         if (_settledPoints == stockInfo.points) {
401:             tokenManager.addTokenBalance(
402:                 TokenBalanceType.RemainingCash,
403:                 _msgSender(),
404:                 makerInfo.tokenAddress,
405:                 collateralFee
406:             );
407:         } else {
408:             tokenManager.addTokenBalance(
409:                 TokenBalanceType.MakerRefund,
410:                 offerInfo.authority,
411:                 makerInfo.tokenAddress,
412:                 collateralFee
413:             );
414:         }
415: 
416:         perMarkets.settleAskTaker(
417:             stockInfo.preOffer,
418:             _stock,
419:             _settledPoints,
420:             settledPointTokenAmount
421:         );
422: 
423:         emit SettleAskTaker(
424:             makerInfo.marketPlace,
425:             offerInfo.maker,
426:             _stock,
427:             stockInfo.preOffer,
428:             _msgSender(),
429:             _settledPoints,
430:             settledPointTokenAmount,
431:             collateralFee
432:         );
433:     }
```
['[222](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L222-L254)']
```solidity
222:     function settleAskMaker(address _offer, uint256 _settledPoints) external {
223:         (
224:             OfferInfo memory offerInfo,
225:             MakerInfo memory makerInfo,
226:             MarketPlaceInfo memory marketPlaceInfo,
227:             MarketPlaceStatus status
228:         ) = getOfferInfo(_offer);
229: 
230:         if (_settledPoints > offerInfo.usedPoints) {
231:             revert InvalidPoints();
232:         }
233: 
234:         if (marketPlaceInfo.fixedratio) {
235:             revert FixedRatioUnsupported();
236:         }
237: 
238:         if (offerInfo.offerType == OfferType.Bid) {
239:             revert InvalidOfferType(OfferType.Ask, OfferType.Bid);
240:         }
241: 
242:         if (
243:             offerInfo.offerStatus != OfferStatus.Virgin &&
244:             offerInfo.offerStatus != OfferStatus.Canceled
245:         ) {
246:             revert InvalidOfferStatus();
247:         }
248: 
249:         if (status == MarketPlaceStatus.AskSettling) {
250:             if (_msgSender() != offerInfo.authority) {
251:                 revert Errors.Unauthorized();
252:             }
253:         } else {
254:             if (_msgSender() != owner()) { // <= FOUND
255:                 revert Errors.Unauthorized();
256:             }
257:             if (_settledPoints > 0) {
258:                 revert InvalidPoints();
259:             }
260:         }
261: 
262:         uint256 settledPointTokenAmount = marketPlaceInfo.tokenPerPoint *
263:             _settledPoints;
264: 
265:         ITokenManager tokenManager = tadleFactory.getTokenManager();
266:         if (settledPointTokenAmount > 0) {
267:             tokenManager.tillIn(
268:                 _msgSender(),
269:                 marketPlaceInfo.tokenAddress,
270:                 settledPointTokenAmount,
271:                 true
272:             );
273:         }
274: 
275:         uint256 makerRefundAmount;
276:         if (_settledPoints == offerInfo.usedPoints) {
277:             if (offerInfo.offerStatus == OfferStatus.Virgin) {
278:                 makerRefundAmount = OfferLibraries.getDepositAmount(
279:                     offerInfo.offerType,
280:                     offerInfo.collateralRate,
281:                     offerInfo.amount,
282:                     true,
283:                     Math.Rounding.Floor
284:                 );
285:             } else {
286:                 uint256 usedAmount = offerInfo.amount.mulDiv(
287:                     offerInfo.usedPoints,
288:                     offerInfo.points,
289:                     Math.Rounding.Floor
290:                 );
291: 
292:                 makerRefundAmount = OfferLibraries.getDepositAmount(
293:                     offerInfo.offerType,
294:                     offerInfo.collateralRate,
295:                     usedAmount,
296:                     true,
297:                     Math.Rounding.Floor
298:                 );
299:             }
300: 
301:             tokenManager.addTokenBalance(
302:                 TokenBalanceType.SalesRevenue,
303:                 _msgSender(),
304:                 makerInfo.tokenAddress,
305:                 makerRefundAmount
306:             );
307:         }
308: 
309:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
310:         perMarkets.settledAskOffer(
311:             _offer,
312:             _settledPoints,
313:             settledPointTokenAmount
314:         );
315: 
316:         emit SettleAskMaker(
317:             makerInfo.marketPlace,
318:             offerInfo.maker,
319:             _offer,
320:             _msgSender(),
321:             _settledPoints,
322:             settledPointTokenAmount,
323:             makerRefundAmount
324:         );
325:     }
```
['[335](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L335-L365)']
```solidity
335:     function settleAskTaker(address _stock, uint256 _settledPoints) external {
336:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
337:         StockInfo memory stockInfo = perMarkets.getStockInfo(_stock);
338: 
339:         (
340:             OfferInfo memory offerInfo,
341:             MakerInfo memory makerInfo,
342:             MarketPlaceInfo memory marketPlaceInfo,
343:             MarketPlaceStatus status
344:         ) = getOfferInfo(stockInfo.preOffer);
345: 
346:         if (stockInfo.stockStatus != StockStatus.Initialized) {
347:             revert InvalidStockStatus();
348:         }
349: 
350:         if (marketPlaceInfo.fixedratio) {
351:             revert FixedRatioUnsupported();
352:         }
353:         if (stockInfo.stockType == StockType.Bid) {
354:             revert InvalidStockType();
355:         }
356:         if (_settledPoints > stockInfo.points) {
357:             revert InvalidPoints();
358:         }
359: 
360:         if (status == MarketPlaceStatus.AskSettling) {
361:             if (_msgSender() != offerInfo.authority) {
362:                 revert Errors.Unauthorized();
363:             }
364:         } else {
365:             if (_msgSender() != owner()) { // <= FOUND
366:                 revert Errors.Unauthorized();
367:             }
368:             if (_settledPoints > 0) {
369:                 revert InvalidPoints();
370:             }
371:         }
372: 
373:         uint256 settledPointTokenAmount = marketPlaceInfo.tokenPerPoint *
374:             _settledPoints;
375:         ITokenManager tokenManager = tadleFactory.getTokenManager();
376:         if (settledPointTokenAmount > 0) {
377:             tokenManager.tillIn(
378:                 _msgSender(),
379:                 marketPlaceInfo.tokenAddress,
380:                 settledPointTokenAmount,
381:                 true
382:             );
383: 
384:             tokenManager.addTokenBalance(
385:                 TokenBalanceType.PointToken,
386:                 offerInfo.authority,
387:                 makerInfo.tokenAddress,
388:                 settledPointTokenAmount
389:             );
390:         }
391: 
392:         uint256 collateralFee = OfferLibraries.getDepositAmount(
393:             offerInfo.offerType,
394:             offerInfo.collateralRate,
395:             stockInfo.amount,
396:             false,
397:             Math.Rounding.Floor
398:         );
399: 
400:         if (_settledPoints == stockInfo.points) {
401:             tokenManager.addTokenBalance(
402:                 TokenBalanceType.RemainingCash,
403:                 _msgSender(),
404:                 makerInfo.tokenAddress,
405:                 collateralFee
406:             );
407:         } else {
408:             tokenManager.addTokenBalance(
409:                 TokenBalanceType.MakerRefund,
410:                 offerInfo.authority,
411:                 makerInfo.tokenAddress,
412:                 collateralFee
413:             );
414:         }
415: 
416:         perMarkets.settleAskTaker(
417:             stockInfo.preOffer,
418:             _stock,
419:             _settledPoints,
420:             settledPointTokenAmount
421:         );
422: 
423:         emit SettleAskTaker(
424:             makerInfo.marketPlace,
425:             offerInfo.maker,
426:             _stock,
427:             stockInfo.preOffer,
428:             _msgSender(),
429:             _settledPoints,
430:             settledPointTokenAmount,
431:             collateralFee
432:         );
433:     }
```


</details>

## [Medium-2] Using transfer functions to a payable address

### Resolution 
Transferring tokens to a payable address using transfer or transferFrom in Solidity can be problematic because these functions are not aware of the payable status of the address. Payable addresses are typically contracts expecting to receive Ether and might contain a receive or fallback function to handle incoming transactions. When ERC20 tokens are sent to these addresses, these functions are not triggered, potentially leading to loss of tokens if the contract lacks a way to retrieve them.

In Ethereum, when a contract sends Ether to another contract, the receiving contract's fallback function gets triggered. This function has a stipend of 2300 gas to work with. This stipend is intentionally limited to prevent the recipient from performing other complex operations during the transaction, which would add to the sending contract's gas costs unpredictably.

2300 gas is just enough to perform basic logging by triggering an event. But it is not enough to perform state changes, as these operations cost significantly more gas.

The 2300 gas stipend is only applicable if Ether is sent through a simple send() or transfer() function call. If a contract calls another contract function that changes the contract state, the gas provided for the function call must be explicitly specified and can be higher than 2300 gas.

This limitation is one reason why it's recommended to avoid using send() or transfer() in favor of the call{value: x}("") pattern. The latter allows sending arbitrary amounts of gas along with the Ether, reducing the chance of out-of-gas errors in the receiving contract.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[137](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L137-L169)']
```solidity
137:     function withdraw(
138:         address _tokenAddress,
139:         TokenBalanceType _tokenBalanceType
140:     ) external whenNotPaused {
141:         uint256 claimAbleAmount = userTokenBalanceMap[_msgSender()][
142:             _tokenAddress
143:         ][_tokenBalanceType];
144: 
145:         if (claimAbleAmount == 0) {
146:             return;
147:         }
148: 
149:         address capitalPoolAddr = tadleFactory.relatedContracts(
150:             RelatedContractLibraries.CAPITAL_POOL
151:         );
152: 
153:         if (_tokenAddress == wrappedNativeToken) {
154:             
155: 
160:             _transfer(
161:                 wrappedNativeToken,
162:                 capitalPoolAddr,
163:                 address(this),
164:                 claimAbleAmount,
165:                 capitalPoolAddr
166:             );
167: 
168:             IWrappedNativeToken(wrappedNativeToken).withdraw(claimAbleAmount);
169:             payable(msg.sender).transfer(claimAbleAmount); // <= FOUND
170:         } else {
171:             
172: 
175:             _safe_transfer_from(
176:                 _tokenAddress,
177:                 capitalPoolAddr,
178:                 _msgSender(),
179:                 claimAbleAmount
180:             );
181:         }
182: 
183:         emit Withdraw(
184:             _msgSender(),
185:             _tokenAddress,
186:             _tokenBalanceType,
187:             claimAbleAmount
188:         );
189:     }
```


</details>

## [Medium-3] Contract contains payable functions but no withdraw/sweep function

### Resolution 
In smart contract development, particularly for Ethereum, having payable functions without a corresponding withdraw or sweep function can lead to potential issues. Payable functions allow the contract to receive Ether, but without a mechanism to withdraw these funds, the Ether can become locked within the contract indefinitely. This situation might be intentional in some cases (like a burn function), but generally, it’s a design oversight. A withdraw or sweep function is necessary to transfer Ether out of the contract to a specific address, typically the owner's or a designated recipient. Without this, the contract lacks flexibility in managing its funds, potentially leading to lost or inaccessible Ether.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[27](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L27-L27)']
```solidity
27: contract PreMarktes is PerMarketsStorage, Rescuable, Related, IPerMarkets 
```


</details>

## [Medium-4] isContract is not a reliable way to determine if a address is a EOA or contract

### Resolution 
Using `isContract` to distinguish between Externally Owned Accounts (EOAs) and contracts in Ethereum is no longer reliable due to proxy contracts and contract creation during transaction execution. This method may inaccurately classify contracts as EOAs or vice versa, especially post-transaction. OpenZeppelin's Address library deprecated `isContract` recognizing these limitations. For security and accuracy, alternatives or additional checks should be used for distinguishing account types, aligning with current best practices and avoiding false assumptions based on outdated or unreliable methods.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[57](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L57-L58)']
```solidity
57:         
58:         if (!_logic.isContract()) { // <= FOUND
```


</details>

## [Low-1] Gas grief possible on unsafe external calls 

### Resolution 
In Solidity, the use of low-level `call` methods can expose contracts to gas griefing attacks. The potential problem arises when the callee contract returns a large amount of data. This data is allocated in the memory of the calling contract, which pays for the gas costs. If the callee contract intentionally returns an enormous amount of data, the gas costs can skyrocket, causing the transaction to fail due to an Out of Gas error. Therefore, it's advisable to limit the use of `call` when interacting with untrusted contracts, or ensure that the callee's returned data size is capped or known in advance to prevent unexpected high gas costs.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[24](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L24-L25)']
```solidity
24:     function approve(address tokenAddr) external { // <= FOUND
25:         address tokenManager = tadleFactory.relatedContracts( // <= FOUND
26:             RelatedContractLibraries.TOKEN_MANAGER
27:         );
28:         (bool success, ) = tokenAddr.call(
29:             abi.encodeWithSelector(
30:                 APPROVE_SELECTOR,
31:                 tokenManager,
32:                 type(uint256).max
33:             )
34:         );
35: 
36:         if (!success) {
37:             revert ApproveFailed();
38:         }
39:     }
```


</details>

## [Low-2] Missing checks for address(0x0) when updating address state variables 

Num of instances: 6

### Findings 


<details><summary>Click to show findings</summary>

['[222](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L222-L222)']
```solidity
222:     function settleAskMaker(address _offer, uint256 _settledPoints) external {
223:         (
224:             OfferInfo memory offerInfo,
225:             MakerInfo memory makerInfo,
226:             MarketPlaceInfo memory marketPlaceInfo,
227:             MarketPlaceStatus status
228:         ) = getOfferInfo(_offer);
229: 
230:         if (_settledPoints > offerInfo.usedPoints) {
231:             revert InvalidPoints();
232:         }
233: 
234:         if (marketPlaceInfo.fixedratio) {
235:             revert FixedRatioUnsupported();
236:         }
237: 
238:         if (offerInfo.offerType == OfferType.Bid) {
239:             revert InvalidOfferType(OfferType.Ask, OfferType.Bid);
240:         }
241: 
242:         if (
243:             offerInfo.offerStatus != OfferStatus.Virgin &&
244:             offerInfo.offerStatus != OfferStatus.Canceled
245:         ) {
246:             revert InvalidOfferStatus();
247:         }
248: 
249:         if (status == MarketPlaceStatus.AskSettling) {
250:             if (_msgSender() != offerInfo.authority) {
251:                 revert Errors.Unauthorized();
252:             }
253:         } else {
254:             if (_msgSender() != owner()) {
255:                 revert Errors.Unauthorized();
256:             }
257:             if (_settledPoints > 0) {
258:                 revert InvalidPoints();
259:             }
260:         }
261: 
262:         uint256 settledPointTokenAmount = marketPlaceInfo.tokenPerPoint *
263:             _settledPoints;
264: 
265:         ITokenManager tokenManager = tadleFactory.getTokenManager();
266:         if (settledPointTokenAmount > 0) {
267:             tokenManager.tillIn(
268:                 _msgSender(),
269:                 marketPlaceInfo.tokenAddress,
270:                 settledPointTokenAmount,
271:                 true
272:             );
273:         }
274: 
275:         uint256 makerRefundAmount;
276:         if (_settledPoints == offerInfo.usedPoints) {
277:             if (offerInfo.offerStatus == OfferStatus.Virgin) {
278:                 makerRefundAmount = OfferLibraries.getDepositAmount(
279:                     offerInfo.offerType,
280:                     offerInfo.collateralRate,
281:                     offerInfo.amount,
282:                     true,
283:                     Math.Rounding.Floor
284:                 );
285:             } else {
286:                 uint256 usedAmount = offerInfo.amount.mulDiv(
287:                     offerInfo.usedPoints,
288:                     offerInfo.points,
289:                     Math.Rounding.Floor
290:                 );
291: 
292:                 makerRefundAmount = OfferLibraries.getDepositAmount(
293:                     offerInfo.offerType,
294:                     offerInfo.collateralRate,
295:                     usedAmount,
296:                     true,
297:                     Math.Rounding.Floor
298:                 );
299:             }
300: 
301:             tokenManager.addTokenBalance(
302:                 TokenBalanceType.SalesRevenue,
303:                 _msgSender(),
304:                 makerInfo.tokenAddress,
305:                 makerRefundAmount
306:             );
307:         }
308: 
309:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
310:         perMarkets.settledAskOffer(
311:             _offer,
312:             _settledPoints,
313:             settledPointTokenAmount
314:         );
315: 
316:         emit SettleAskMaker(
317:             makerInfo.marketPlace,
318:             offerInfo.maker,
319:             _offer,
320:             _msgSender(),
321:             _settledPoints,
322:             settledPointTokenAmount,
323:             makerRefundAmount
324:         );
325:     }
```
['[335](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L335-L335)']
```solidity
335:     function settleAskTaker(address _stock, uint256 _settledPoints) external {
336:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
337:         StockInfo memory stockInfo = perMarkets.getStockInfo(_stock);
338: 
339:         (
340:             OfferInfo memory offerInfo,
341:             MakerInfo memory makerInfo,
342:             MarketPlaceInfo memory marketPlaceInfo,
343:             MarketPlaceStatus status
344:         ) = getOfferInfo(stockInfo.preOffer);
345: 
346:         if (stockInfo.stockStatus != StockStatus.Initialized) {
347:             revert InvalidStockStatus();
348:         }
349: 
350:         if (marketPlaceInfo.fixedratio) {
351:             revert FixedRatioUnsupported();
352:         }
353:         if (stockInfo.stockType == StockType.Bid) {
354:             revert InvalidStockType();
355:         }
356:         if (_settledPoints > stockInfo.points) {
357:             revert InvalidPoints();
358:         }
359: 
360:         if (status == MarketPlaceStatus.AskSettling) {
361:             if (_msgSender() != offerInfo.authority) {
362:                 revert Errors.Unauthorized();
363:             }
364:         } else {
365:             if (_msgSender() != owner()) {
366:                 revert Errors.Unauthorized();
367:             }
368:             if (_settledPoints > 0) {
369:                 revert InvalidPoints();
370:             }
371:         }
372: 
373:         uint256 settledPointTokenAmount = marketPlaceInfo.tokenPerPoint *
374:             _settledPoints;
375:         ITokenManager tokenManager = tadleFactory.getTokenManager();
376:         if (settledPointTokenAmount > 0) {
377:             tokenManager.tillIn(
378:                 _msgSender(),
379:                 marketPlaceInfo.tokenAddress,
380:                 settledPointTokenAmount,
381:                 true
382:             );
383: 
384:             tokenManager.addTokenBalance(
385:                 TokenBalanceType.PointToken,
386:                 offerInfo.authority,
387:                 makerInfo.tokenAddress,
388:                 settledPointTokenAmount
389:             );
390:         }
391: 
392:         uint256 collateralFee = OfferLibraries.getDepositAmount(
393:             offerInfo.offerType,
394:             offerInfo.collateralRate,
395:             stockInfo.amount,
396:             false,
397:             Math.Rounding.Floor
398:         );
399: 
400:         if (_settledPoints == stockInfo.points) {
401:             tokenManager.addTokenBalance(
402:                 TokenBalanceType.RemainingCash,
403:                 _msgSender(),
404:                 makerInfo.tokenAddress,
405:                 collateralFee
406:             );
407:         } else {
408:             tokenManager.addTokenBalance(
409:                 TokenBalanceType.MakerRefund,
410:                 offerInfo.authority,
411:                 makerInfo.tokenAddress,
412:                 collateralFee
413:             );
414:         }
415: 
416:         perMarkets.settleAskTaker(
417:             stockInfo.preOffer,
418:             _stock,
419:             _settledPoints,
420:             settledPointTokenAmount
421:         );
422: 
423:         emit SettleAskTaker(
424:             makerInfo.marketPlace,
425:             offerInfo.maker,
426:             _stock,
427:             stockInfo.preOffer,
428:             _msgSender(),
429:             _settledPoints,
430:             settledPointTokenAmount,
431:             collateralFee
432:         );
433:     }
```
['[120](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L120-L120)']
```solidity
120:     function updateMarket(
121:         string calldata _marketPlaceName,
122:         address _tokenAddress,
123:         uint256 _tokenPerPoint,
124:         uint256 _tge,
125:         uint256 _settlementPeriod
126:     ) external onlyOwner {
127:         address marketPlace = GenerateAddress.generateMarketPlaceAddress(
128:             _marketPlaceName
129:         );
130: 
131:         MarketPlaceInfo storage marketPlaceInfo = marketPlaceInfoMap[
132:             marketPlace
133:         ];
134: 
135:         if (marketPlaceInfo.status != MarketPlaceStatus.Online) {
136:             revert MarketPlaceNotOnline(marketPlaceInfo.status);
137:         }
138: 
139:         marketPlaceInfo.tokenAddress = _tokenAddress;
140:         marketPlaceInfo.tokenPerPoint = _tokenPerPoint;
141:         marketPlaceInfo.tge = _tge;
142:         marketPlaceInfo.settlementPeriod = _settlementPeriod;
143: 
144:         emit UpdateMarket(
145:             _marketPlaceName,
146:             marketPlace,
147:             _tokenAddress,
148:             _tokenPerPoint,
149:             _tge,
150:             _settlementPeriod
151:         );
152:     }
```
['[179](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L179-L179)']
```solidity
179:     function updateUserPlatformFeeRate(
180:         address _accountAddress,
181:         uint256 _platformFeeRate
182:     ) external onlyOwner {
183:         require(
184:             _platformFeeRate <= Constants.PLATFORM_FEE_DECIMAL_SCALER,
185:             "Invalid platform fee rate"
186:         );
187:         userPlatformFeeRate[_accountAddress] = _platformFeeRate;
188: 
189:         emit UpdateUserPlatformFeeRate(_accountAddress, _platformFeeRate);
190:     }
```
['[199](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L199-L199)']
```solidity
199:     function updateReferralExtraRateMap(
200:         address _referrer,
201:         uint256 _extraRate
202:     ) external onlyOwner {
203:         uint256 totalRate = _extraRate + baseReferralRate;
204:         if (totalRate > Constants.REFERRAL_RATE_DECIMAL_SCALER) {
205:             revert InvalidTotalRate(totalRate);
206:         }
207:         referralExtraRateMap[_referrer] = _extraRate;
208:         emit UpdateReferralExtraRateMap(_referrer, _extraRate);
209:     }
```
['[197](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L197-L197)']
```solidity
197:     function updateTokenWhiteListed(
198:         address[] calldata _tokens,
199:         bool _isWhiteListed
200:     ) external onlyOwner {
201:         uint256 _tokensLength = _tokens.length;
202: 
203:         for (uint256 i = 0; i < _tokensLength; ) {
204:             _updateTokenWhiteListed(_tokens[i], _isWhiteListed);
205:             unchecked {
206:                 ++i;
207:             }
208:         }
209:     }
```


</details>

## [Low-3] Avoid making withdraw/unstake functions Pausable 

### Resolution 
Making withdraw or unstake functions pausable can create a risk by potentially locking users' funds indefinitely, especially in scenarios where the contract is paused for a prolonged period. This design could undermine trust and may not align with the decentralization principles of blockchain. It's advisable to design these functions with user security and accessibility in mind, ensuring that pausing capabilities are used judiciously and transparently, with clear conditions for resuming normal operations.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[137](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L137-L140)']
```solidity
137:     function withdraw( // <= FOUND
138:         address _tokenAddress,
139:         TokenBalanceType _tokenBalanceType
140:     ) external whenNotPaused  // <= FOUND
```


</details>

## [Low-4] Solidity version 0.8.23 won't work on all chains due to MCOPY 

### Resolution 
Solidity version 0.8.23 introduces the MCOPY opcode, this may not be implemented on all chains and L2 thus reducing the portability and compatibility of the code. Consider using a earlier solidity version.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[2](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L2-L2)']
```solidity
2: pragma solidity ^0.8.13; // <= FOUND
```


</details>

## [Low-5] The call abi.encodeWithSelector is not type safe

### Resolution 
In Solidity, `abi.encodeWithSelector` is a function used for encoding data along with a function selector, but it is not type-safe. This means it does not enforce type checking at compile time, potentially leading to errors if arguments do not match the expected types. Starting from version 0.8.13, Solidity introduced `abi.encodeCall`, which offers a safer alternative. `abi.encodeCall` ensures type safety by performing a full type check, aligning the types of the arguments with the function signature. This reduces the risk of bugs caused by typographical errors or mismatched types. Using `abi.encodeCall` enhances the reliability and security of the code by ensuring that the encoded data strictly conforms to the specified types, making it a preferable choice in Solidity versions 0.8.13 and above.

Num of instances: 2

### Findings 


<details><summary>Click to show findings</summary>

['[28](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L28-L29)']
```solidity
28:         (bool success, ) = tokenAddr.call(
29:             abi.encodeWithSelector( // <= FOUND
30:                 APPROVE_SELECTOR,
31:                 tokenManager,
32:                 type(uint256).max
33:             )
34:         );
```
['[28](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L28-L29)']
```solidity
28:         (bool success, ) = tokenAddr.call(
29:             abi.encodeWithSelector( // <= FOUND
30:                 APPROVE_SELECTOR,
31:                 tokenManager,
32:                 type(uint256).max
33:             )
34:         );
```


</details>

## [Low-6] Missing zero address check in constructor

### Resolution 
In Solidity, constructors often take address parameters to initialize important components of a contract, such as owner or linked contracts. However, without a check, there's a risk that an address parameter could be mistakenly set to the zero address (0x0). This could occur due to a mistake or oversight during contract deployment. A zero address in a crucial role can cause serious issues, as it cannot perform actions like a normal address, and any funds sent to it are irretrievable. Therefore, it's crucial to include a zero address check in constructors to prevent such potential problems. If a zero address is detected, the constructor should revert the transaction.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[40](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L40-L40)']
```solidity
40:     constructor(address _guardian) { // <= FOUND
41:         guardian = _guardian;
42:     }
```


</details>

## [Low-7] Using zero as a parameter

### Resolution 
Taking 0 as a valid argument in Solidity without checks can lead to severe security issues. A historical example is the infamous 0x0 address bug where numerous tokens were lost. This happens because '0' can be interpreted as an uninitialized address, leading to transfers to the '0x0' address, effectively burning tokens. Moreover, 0 as a denominator in division operations would cause a runtime exception. It's also often indicative of a logical error in the caller's code. It's important to always validate input and handle edge cases like 0 appropriately. Use `require()` statements to enforce conditions and provide clear error messages to facilitate debugging and safer code.

Num of instances: 2

### Findings 


<details><summary>Click to show findings</summary>

['[39](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L39-L135)']
```solidity
39:     function createOffer(CreateOfferParams calldata params) external payable { // <= FOUND
40:         
41: 
45:         if (params.points == 0x0 || params.amount == 0x0) {
46:             revert Errors.AmountIsZero();
47:         }
48: 
49:         if (params.eachTradeTax > Constants.EACH_TRADE_TAX_DECIMAL_SCALER) {
50:             revert InvalidEachTradeTaxRate();
51:         }
52: 
53:         if (params.collateralRate < Constants.COLLATERAL_RATE_DECIMAL_SCALER) {
54:             revert InvalidCollateralRate();
55:         }
56: 
57:         
58:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
59:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
60:             .getMarketPlaceInfo(params.marketPlace);
61:         marketPlaceInfo.checkMarketPlaceStatus(
62:             block.timestamp,
63:             MarketPlaceStatus.Online
64:         );
65: 
66:         
67:         address makerAddr = GenerateAddress.generateMakerAddress(offerId);
68:         address offerAddr = GenerateAddress.generateOfferAddress(offerId);
69:         address stockAddr = GenerateAddress.generateStockAddress(offerId);
70: 
71:         if (makerInfoMap[makerAddr].authority != address(0x0)) {
72:             revert MakerAlreadyExist();
73:         }
74: 
75:         if (offerInfoMap[offerAddr].authority != address(0x0)) {
76:             revert OfferAlreadyExist();
77:         }
78: 
79:         if (stockInfoMap[stockAddr].authority != address(0x0)) {
80:             revert StockAlreadyExist();
81:         }
82: 
83:         offerId = offerId + 1;
84: 
85:         {
86:             
87:             uint256 transferAmount = OfferLibraries.getDepositAmount(
88:                 params.offerType,
89:                 params.collateralRate,
90:                 params.amount,
91:                 true,
92:                 Math.Rounding.Ceil
93:             );
94: 
95:             ITokenManager tokenManager = tadleFactory.getTokenManager();
96:             tokenManager.tillIn{value: msg.value}(
97:                 _msgSender(),
98:                 params.tokenAddress,
99:                 transferAmount,
100:                 false
101:             );
102:         }
103: 
104:         
105:         makerInfoMap[makerAddr] = MakerInfo({
106:             offerSettleType: params.offerSettleType, // <= FOUND
107:             authority: _msgSender(),
108:             marketPlace: params.marketPlace,
109:             tokenAddress: params.tokenAddress,
110:             originOffer: offerAddr,
111:             platformFee: 0,
112:             eachTradeTax: params.eachTradeTax
113:         });
114: 
115:         
116:         offerInfoMap[offerAddr] = OfferInfo({
117:             id: offerId, // <= FOUND
118:             authority: _msgSender(),
119:             maker: makerAddr,
120:             offerStatus: OfferStatus.Virgin,
121:             offerType: params.offerType,
122:             points: params.points,
123:             amount: params.amount,
124:             collateralRate: params.collateralRate,
125:             abortOfferStatus: AbortOfferStatus.Initialized,
126:             usedPoints: 0,
127:             tradeTax: 0,
128:             settledPoints: 0,
129:             settledPointTokenAmount: 0,
130:             settledCollateralAmount: 0
131:         });
132: 
133:         
134:         stockInfoMap[stockAddr] = StockInfo({
135:             id: offerId, // <= FOUND
136:             stockStatus: StockStatus.Initialized,
137:             stockType: params.offerType == OfferType.Ask
138:                 ? StockType.Bid
139:                 : StockType.Ask,
140:             authority: _msgSender(),
141:             maker: makerAddr,
142:             preOffer: address(0x0),
143:             offer: offerAddr,
144:             points: params.points,
145:             amount: params.amount
146:         });
147: 
148:         emit CreateOffer(
149:             offerAddr,
150:             makerAddr,
151:             stockAddr,
152:             params.marketPlace,
153:             _msgSender(),
154:             params.points,
155:             params.amount
156:         );
157:     }
```
['[295](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L295-L371)']
```solidity
295:     function listOffer(
296:         address _stock,
297:         uint256 _amount,
298:         uint256 _collateralRate
299:     ) external payable {
300:         if (_amount == 0x0) {
301:             revert Errors.AmountIsZero();
302:         }
303: 
304:         if (_collateralRate < Constants.COLLATERAL_RATE_DECIMAL_SCALER) {
305:             revert InvalidCollateralRate();
306:         }
307: 
308:         StockInfo storage stockInfo = stockInfoMap[_stock];
309:         if (_msgSender() != stockInfo.authority) {
310:             revert Errors.Unauthorized();
311:         }
312: 
313:         OfferInfo storage offerInfo = offerInfoMap[stockInfo.preOffer];
314:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
315: 
316:         
317:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
318:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
319:             .getMarketPlaceInfo(makerInfo.marketPlace);
320: 
321:         marketPlaceInfo.checkMarketPlaceStatus(
322:             block.timestamp,
323:             MarketPlaceStatus.Online
324:         );
325: 
326:         if (stockInfo.offer != address(0x0)) {
327:             revert OfferAlreadyExist();
328:         }
329: 
330:         if (stockInfo.stockType != StockType.Bid) {
331:             revert InvalidStockType(StockType.Bid, stockInfo.stockType);
332:         }
333: 
334:         
335:         if (makerInfo.offerSettleType == OfferSettleType.Turbo) {
336:             address originOffer = makerInfo.originOffer;
337:             OfferInfo memory originOfferInfo = offerInfoMap[originOffer];
338: 
339:             if (_collateralRate != originOfferInfo.collateralRate) {
340:                 revert InvalidCollateralRate();
341:             }
342:             originOfferInfo.abortOfferStatus = AbortOfferStatus.SubOfferListed;
343:         }
344: 
345:         
346:         if (makerInfo.offerSettleType == OfferSettleType.Protected) {
347:             uint256 transferAmount = OfferLibraries.getDepositAmount(
348:                 offerInfo.offerType,
349:                 offerInfo.collateralRate,
350:                 _amount,
351:                 true,
352:                 Math.Rounding.Ceil
353:             );
354: 
355:             ITokenManager tokenManager = tadleFactory.getTokenManager();
356:             tokenManager.tillIn{value: msg.value}(
357:                 _msgSender(),
358:                 makerInfo.tokenAddress,
359:                 transferAmount,
360:                 false
361:             );
362:         }
363: 
364:         address offerAddr = GenerateAddress.generateOfferAddress(stockInfo.id);
365:         if (offerInfoMap[offerAddr].authority != address(0x0)) {
366:             revert OfferAlreadyExist();
367:         }
368: 
369:         
370:         offerInfoMap[offerAddr] = OfferInfo({
371:             id: stockInfo.id, // <= FOUND
372:             authority: _msgSender(),
373:             maker: offerInfo.maker,
374:             offerStatus: OfferStatus.Virgin,
375:             offerType: offerInfo.offerType,
376:             abortOfferStatus: AbortOfferStatus.Initialized,
377:             points: stockInfo.points,
378:             amount: _amount,
379:             collateralRate: _collateralRate,
380:             usedPoints: 0,
381:             tradeTax: 0,
382:             settledPoints: 0,
383:             settledPointTokenAmount: 0,
384:             settledCollateralAmount: 0
385:         });
386: 
387:         stockInfo.offer = offerAddr;
388: 
389:         emit ListOffer(
390:             offerAddr,
391:             _stock,
392:             _msgSender(),
393:             stockInfo.points,
394:             _amount
395:         );
396:     }
```


</details>

## [Low-8] Critical functions should be a two step procedure

### Resolution 
Critical functions in Solidity contracts should follow a two-step procedure to enhance security, minimize human error, and ensure proper access control. By dividing sensitive operations into distinct phases, such as initiation and confirmation, developers can introduce a safeguard against unintended actions or unauthorized access.

Num of instances: 7

### Findings 


<details><summary>Click to show findings</summary>

['[222](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L222-L222)']
```solidity
222:     function settleAskMaker(address _offer, uint256 _settledPoints) external  // <= FOUND
```
['[335](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L335-L335)']
```solidity
335:     function settleAskTaker(address _stock, uint256 _settledPoints) external  // <= FOUND
```
['[120](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L120-L120)']
```solidity
120:     function updateMarket( // <= FOUND
121:         string calldata _marketPlaceName,
122:         address _tokenAddress,
123:         uint256 _tokenPerPoint,
124:         uint256 _tge,
125:         uint256 _settlementPeriod
126:     ) external onlyOwner 
```
['[160](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L160-L160)']
```solidity
160:     function updateMarketPlaceStatus( // <= FOUND
161:         string calldata _marketPlaceName,
162:         MarketPlaceStatus _status
163:     ) external onlyOwner 
```
['[179](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L179-L179)']
```solidity
179:     function updateUserPlatformFeeRate( // <= FOUND
180:         address _accountAddress,
181:         uint256 _platformFeeRate
182:     ) external onlyOwner 
```
['[199](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L199-L199)']
```solidity
199:     function updateReferralExtraRateMap( // <= FOUND
200:         address _referrer,
201:         uint256 _extraRate
202:     ) external onlyOwner 
```
['[197](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L197-L197)']
```solidity
197:     function updateTokenWhiteListed( // <= FOUND
198:         address[] calldata _tokens,
199:         bool _isWhiteListed
200:     ) external onlyOwner 
```


</details>

## [Low-9] Remaining eth may not be refunded to users

### Resolution 
When a contract function accepts Ethereum and executes a `.call()` or similar function that also forwards Ethereum value, it's important to check for and refund any remaining balance. This is because some of the supplied value may not be used during the call execution due to gas constraints, a revert in the called contract, or simply because not all the value was needed.

If you do not account for this remaining balance, it can become "locked" in the contract. It's crucial to either return the remaining balance to the sender or handle it in a way that ensures it is not permanently stuck. Neglecting to do so can lead to loss of funds and degradation of the contract's reliability. Furthermore, it's good practice to ensure fairness and trust with your users by returning unused funds.

Num of instances: 5

### Findings 


<details><summary>Click to show findings</summary>

['[39](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L39-L96)']
```solidity
39:     function createOffer(CreateOfferParams calldata params) external payable {
40:         
41: 
45:         if (params.points == 0x0 || params.amount == 0x0) {
46:             revert Errors.AmountIsZero();
47:         }
48: 
49:         if (params.eachTradeTax > Constants.EACH_TRADE_TAX_DECIMAL_SCALER) {
50:             revert InvalidEachTradeTaxRate();
51:         }
52: 
53:         if (params.collateralRate < Constants.COLLATERAL_RATE_DECIMAL_SCALER) {
54:             revert InvalidCollateralRate();
55:         }
56: 
57:         
58:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
59:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
60:             .getMarketPlaceInfo(params.marketPlace);
61:         marketPlaceInfo.checkMarketPlaceStatus(
62:             block.timestamp,
63:             MarketPlaceStatus.Online
64:         );
65: 
66:         
67:         address makerAddr = GenerateAddress.generateMakerAddress(offerId);
68:         address offerAddr = GenerateAddress.generateOfferAddress(offerId);
69:         address stockAddr = GenerateAddress.generateStockAddress(offerId);
70: 
71:         if (makerInfoMap[makerAddr].authority != address(0x0)) {
72:             revert MakerAlreadyExist();
73:         }
74: 
75:         if (offerInfoMap[offerAddr].authority != address(0x0)) {
76:             revert OfferAlreadyExist();
77:         }
78: 
79:         if (stockInfoMap[stockAddr].authority != address(0x0)) {
80:             revert StockAlreadyExist();
81:         }
82: 
83:         offerId = offerId + 1;
84: 
85:         {
86:             
87:             uint256 transferAmount = OfferLibraries.getDepositAmount(
88:                 params.offerType,
89:                 params.collateralRate,
90:                 params.amount,
91:                 true,
92:                 Math.Rounding.Ceil
93:             );
94: 
95:             ITokenManager tokenManager = tadleFactory.getTokenManager();
96:             tokenManager.tillIn{value: msg.value}( // <= FOUND
97:                 _msgSender(),
98:                 params.tokenAddress,
99:                 transferAmount,
100:                 false
101:             );
102:         }
103: 
104:         
105:         makerInfoMap[makerAddr] = MakerInfo({
106:             offerSettleType: params.offerSettleType,
107:             authority: _msgSender(),
108:             marketPlace: params.marketPlace,
109:             tokenAddress: params.tokenAddress,
110:             originOffer: offerAddr,
111:             platformFee: 0,
112:             eachTradeTax: params.eachTradeTax
113:         });
114: 
115:         
116:         offerInfoMap[offerAddr] = OfferInfo({
117:             id: offerId,
118:             authority: _msgSender(),
119:             maker: makerAddr,
120:             offerStatus: OfferStatus.Virgin,
121:             offerType: params.offerType,
122:             points: params.points,
123:             amount: params.amount,
124:             collateralRate: params.collateralRate,
125:             abortOfferStatus: AbortOfferStatus.Initialized,
126:             usedPoints: 0,
127:             tradeTax: 0,
128:             settledPoints: 0,
129:             settledPointTokenAmount: 0,
130:             settledCollateralAmount: 0
131:         });
132: 
133:         
134:         stockInfoMap[stockAddr] = StockInfo({
135:             id: offerId,
136:             stockStatus: StockStatus.Initialized,
137:             stockType: params.offerType == OfferType.Ask
138:                 ? StockType.Bid
139:                 : StockType.Ask,
140:             authority: _msgSender(),
141:             maker: makerAddr,
142:             preOffer: address(0x0),
143:             offer: offerAddr,
144:             points: params.points,
145:             amount: params.amount
146:         });
147: 
148:         emit CreateOffer(
149:             offerAddr,
150:             makerAddr,
151:             stockAddr,
152:             params.marketPlace,
153:             _msgSender(),
154:             params.points,
155:             params.amount
156:         );
157:     }
```
['[295](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L295-L356)']
```solidity
295:     function listOffer(
296:         address _stock,
297:         uint256 _amount,
298:         uint256 _collateralRate
299:     ) external payable {
300:         if (_amount == 0x0) {
301:             revert Errors.AmountIsZero();
302:         }
303: 
304:         if (_collateralRate < Constants.COLLATERAL_RATE_DECIMAL_SCALER) {
305:             revert InvalidCollateralRate();
306:         }
307: 
308:         StockInfo storage stockInfo = stockInfoMap[_stock];
309:         if (_msgSender() != stockInfo.authority) {
310:             revert Errors.Unauthorized();
311:         }
312: 
313:         OfferInfo storage offerInfo = offerInfoMap[stockInfo.preOffer];
314:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
315: 
316:         
317:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
318:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
319:             .getMarketPlaceInfo(makerInfo.marketPlace);
320: 
321:         marketPlaceInfo.checkMarketPlaceStatus(
322:             block.timestamp,
323:             MarketPlaceStatus.Online
324:         );
325: 
326:         if (stockInfo.offer != address(0x0)) {
327:             revert OfferAlreadyExist();
328:         }
329: 
330:         if (stockInfo.stockType != StockType.Bid) {
331:             revert InvalidStockType(StockType.Bid, stockInfo.stockType);
332:         }
333: 
334:         
335:         if (makerInfo.offerSettleType == OfferSettleType.Turbo) {
336:             address originOffer = makerInfo.originOffer;
337:             OfferInfo memory originOfferInfo = offerInfoMap[originOffer];
338: 
339:             if (_collateralRate != originOfferInfo.collateralRate) {
340:                 revert InvalidCollateralRate();
341:             }
342:             originOfferInfo.abortOfferStatus = AbortOfferStatus.SubOfferListed;
343:         }
344: 
345:         
346:         if (makerInfo.offerSettleType == OfferSettleType.Protected) {
347:             uint256 transferAmount = OfferLibraries.getDepositAmount(
348:                 offerInfo.offerType,
349:                 offerInfo.collateralRate,
350:                 _amount,
351:                 true,
352:                 Math.Rounding.Ceil
353:             );
354: 
355:             ITokenManager tokenManager = tadleFactory.getTokenManager();
356:             tokenManager.tillIn{value: msg.value}( // <= FOUND
357:                 _msgSender(),
358:                 makerInfo.tokenAddress,
359:                 transferAmount,
360:                 false
361:             );
362:         }
363: 
364:         address offerAddr = GenerateAddress.generateOfferAddress(stockInfo.id);
365:         if (offerInfoMap[offerAddr].authority != address(0x0)) {
366:             revert OfferAlreadyExist();
367:         }
368: 
369:         
370:         offerInfoMap[offerAddr] = OfferInfo({
371:             id: stockInfo.id,
372:             authority: _msgSender(),
373:             maker: offerInfo.maker,
374:             offerStatus: OfferStatus.Virgin,
375:             offerType: offerInfo.offerType,
376:             abortOfferStatus: AbortOfferStatus.Initialized,
377:             points: stockInfo.points,
378:             amount: _amount,
379:             collateralRate: _collateralRate,
380:             usedPoints: 0,
381:             tradeTax: 0,
382:             settledPoints: 0,
383:             settledPointTokenAmount: 0,
384:             settledCollateralAmount: 0
385:         });
386: 
387:         stockInfo.offer = offerAddr;
388: 
389:         emit ListOffer(
390:             offerAddr,
391:             _stock,
392:             _msgSender(),
393:             stockInfo.points,
394:             _amount
395:         );
396:     }
```
['[470](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L470-L515)']
```solidity
470:     function relistOffer(address _stock, address _offer) external payable {
471:         OfferInfo storage offerInfo = offerInfoMap[_offer];
472:         StockInfo storage stockInfo = stockInfoMap[_stock];
473: 
474:         if (stockInfo.offer != _offer) {
475:             revert InvalidOfferAccount(stockInfo.offer, _offer);
476:         }
477: 
478:         if (offerInfo.authority != _msgSender()) {
479:             revert Errors.Unauthorized();
480:         }
481: 
482:         if (offerInfo.offerStatus != OfferStatus.Canceled) {
483:             revert InvalidOfferStatus();
484:         }
485: 
486:         
487:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
488: 
489:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
490:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
491:             .getMarketPlaceInfo(makerInfo.marketPlace);
492: 
493:         marketPlaceInfo.checkMarketPlaceStatus(
494:             block.timestamp,
495:             MarketPlaceStatus.Online
496:         );
497: 
498:         
499: 
502:         if (
503:             makerInfo.offerSettleType == OfferSettleType.Protected ||
504:             stockInfo.preOffer == address(0x0)
505:         ) {
506:             uint256 depositAmount = OfferLibraries.getRefundAmount(
507:                 offerInfo.offerType,
508:                 offerInfo.amount,
509:                 offerInfo.points,
510:                 offerInfo.usedPoints,
511:                 offerInfo.collateralRate
512:             );
513: 
514:             ITokenManager tokenManager = tadleFactory.getTokenManager();
515:             tokenManager.tillIn{value: msg.value}( // <= FOUND
516:                 _msgSender(),
517:                 makerInfo.tokenAddress,
518:                 depositAmount,
519:                 false
520:             );
521:         }
522: 
523:         
524:         offerInfo.offerStatus = OfferStatus.Virgin;
525:         emit RelistOffer(_offer, _msgSender());
526:     }
```
['[813](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L813-L831)']
```solidity
813:     function _depositTokenWhenCreateTaker(
814:         uint256 platformFee,
815:         uint256 depositAmount,
816:         uint256 tradeTax,
817:         MakerInfo storage makerInfo,
818:         OfferInfo storage offerInfo,
819:         ITokenManager tokenManager
820:     ) internal {
821:         uint256 transferAmount = OfferLibraries.getDepositAmount(
822:             offerInfo.offerType,
823:             offerInfo.collateralRate,
824:             depositAmount,
825:             false,
826:             Math.Rounding.Ceil
827:         );
828: 
829:         transferAmount = transferAmount + platformFee + tradeTax;
830: 
831:         tokenManager.tillIn{value: msg.value}( // <= FOUND
832:             _msgSender(),
833:             makerInfo.tokenAddress,
834:             transferAmount,
835:             false
836:         );
837:     }
```
['[56](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L56-L89)']
```solidity
56:     function tillIn(
57:         address _accountAddress,
58:         address _tokenAddress,
59:         uint256 _amount,
60:         bool _isPointToken
61:     )
62:         external
63:         payable
64:         onlyRelatedContracts(tadleFactory, _msgSender())
65:         onlyInTokenWhiteList(_isPointToken, _tokenAddress)
66:     {
67:         
68:         if (_amount == 0) {
69:             return;
70:         }
71: 
72:         address capitalPoolAddr = tadleFactory.relatedContracts(
73:             RelatedContractLibraries.CAPITAL_POOL
74:         );
75:         if (capitalPoolAddr == address(0x0)) {
76:             revert Errors.ContractIsNotDeployed();
77:         }
78: 
79:         if (_tokenAddress == wrappedNativeToken) {
80:             
81: 
86:             if (msg.value < _amount) {
87:                 revert Errors.NotEnoughMsgValue(msg.value, _amount);
88:             }
89:             IWrappedNativeToken(wrappedNativeToken).deposit{value: _amount}(); // <= FOUND
90:             _safe_transfer(wrappedNativeToken, capitalPoolAddr, _amount);
91:         } else {
92:             
93:             _transfer(
94:                 _tokenAddress,
95:                 _accountAddress,
96:                 capitalPoolAddr,
97:                 _amount,
98:                 capitalPoolAddr
99:             );
100:         }
101: 
102:         emit TillIn(_accountAddress, _tokenAddress, _amount, _isPointToken);
103:     }
```


</details>

## [Low-10] Return values not checked for approve()

### Resolution 
The ERC-20 token standard does not dictate that the approve function must return a value. The function signature in the ERC-20 standard is function approve(address spender, uint tokens) public returns (bool success);. However, a well-implemented ERC-20 token contract will typically have approve return a boolean value indicating whether or not the operation was successful.

It's crucial to note that not all token contracts follow this practice. Some might not return a value, or they might return a value in a non-standard way. This inconsistency among token contracts is one reason why it's important to handle token interactions carefully in your smart contracts and to check the return value of approve when possible.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[247](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L247-L247)']
```solidity
247:             ICapitalPool(_capitalPoolAddr).approve(address(this)); // <= FOUND
```


</details>

## [Low-11] Incorrect withdraw declaration

### Resolution 
In Solidity, it's essential for clarity and interoperability to correctly specify return types in function declarations. If the `withdraw` function is expected to return a `bool` to indicate success or failure, its omission could lead to ambiguity or unexpected behavior when interacting with or calling this function from other contracts or off-chain systems. Missing return values can mislead developers and potentially lead to contract integrations built on incorrect assumptions. To resolve this, the function declaration for `withdraw` should be modified to explicitly include the `bool` return type, ensuring clarity and correctness in contract interactions.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[137](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L137-L137)']
```solidity
137:     function withdraw( // <= FOUND
138:         address _tokenAddress,
139:         TokenBalanceType _tokenBalanceType
140:     ) external whenNotPaused 
```


</details>

## [Low-12] Events may be emitted out of order due to code not follow the best practice of check-effects-interaction

### Resolution 
The "check-effects-interaction" pattern also impacts event ordering. When a contract doesn't adhere to this pattern, events might be emitted in a sequence that doesn't reflect the actual logical flow of operations. This can cause confusion during event tracking, potentially leading to erroneous off-chain interpretations. To rectify this, always ensure that checks are performed first, state modifications come next, and interactions with external contracts or addresses are done last. This will ensure events are emitted in a logical, consistent manner, providing a clear and accurate chronological record of on-chain actions for off-chain systems and observers.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[51](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L51-L69)']
```solidity
51:     function deployUpgradeableProxy(
52:         uint8 _relatedContractIndex,
53:         address _logic,
54:         bytes memory _data
55:     ) external onlyGuardian returns (address) {
56:         
57:         if (!_logic.isContract()) { // <= FOUND
58:             revert LogicAddrIsNotContract(_logic);
59:         }
60: 
61:         
62:         UpgradeableProxy _proxy = new UpgradeableProxy(
63:             _logic,
64:             guardian,
65:             address(this),
66:             _data
67:         );
68:         relatedContracts[_relatedContractIndex] = address(_proxy);
69:         emit RelatedContractDeployed(_relatedContractIndex, address(_proxy)); // <= FOUND
70:         return address(_proxy);
71:     }
```


</details>

## [Low-13] Missing zero address check in initializer

### Resolution 
Initializer functions in contracts often set important parameters or addresses. Failing to check for the zero address (0x0000000000000000000000000000000000000000) in initializers can lead to unintended behavior, as this address typically signifies an unset or default value. Transfers to or interactions with the zero address can result in permanent loss of assets or broken functionality. It's crucial to add checks using `require(targetAddress != address(0), "Address cannot be zero")` in initializers to prevent accidentally setting important state variables or parameters to this address, ensuring the system's integrity and user asset safety.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[43](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L43-L43)']
```solidity
43:     function initialize(address _wrappedNativeToken) external onlyOwner {
44:         wrappedNativeToken = _wrappedNativeToken;
45:     }
```


</details>

## [Low-14] Critical functions should have a timelock

### Resolution 
Critical functions, especially those affecting protocol parameters or user funds, are potential points of failure or exploitation. To mitigate risks, incorporating a timelock on such functions can be beneficial. A timelock requires a waiting period between the time an action is initiated and when it's executed, giving stakeholders time to react, potentially vetoing malicious or erroneous changes. To implement, integrate a smart contract like OpenZeppelin's `TimelockController` or build a custom mechanism. This ensures governance decisions or administrative changes are transparent and allows for community or multi-signature interventions, enhancing protocol security and trustworthiness.

Num of instances: 2

### Findings 


<details><summary>Click to show findings</summary>

['[222](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L222-L222)']
```solidity
222:     function settleAskMaker(address _offer, uint256 _settledPoints) external  // <= FOUND
```
['[335](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L335-L335)']
```solidity
335:     function settleAskTaker(address _stock, uint256 _settledPoints) external  // <= FOUND
```


</details>

## [Low-15] Missing contract-existence checks before low-level calls

### Resolution 
Low-level calls in Solidity, when made to addresses without contract code, don't fail but return a successful status. This behavior can be misleading, leading to unintended consequences in dApps. Ignoring this can potentially mean acting on false positive results. To address this, apart from the conventional zero-address check, developers should verify the existence of contract code at the target address by ensuring that the code length at the specified address (`<address>.code.length`) is greater than zero. By doing so, it provides a more robust validation before executing low-level calls, safeguarding against unintentional interactions with empty addresses.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[24](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L24-L28)']
```solidity
24:     function approve(address tokenAddr) external {
25:         address tokenManager = tadleFactory.relatedContracts(
26:             RelatedContractLibraries.TOKEN_MANAGER
27:         );
28:         (bool success, ) = tokenAddr.call( // <= FOUND
29:             abi.encodeWithSelector(
30:                 APPROVE_SELECTOR,
31:                 tokenManager,
32:                 type(uint256).max
33:             )
34:         );
35: 
36:         if (!success) {
37:             revert ApproveFailed();
38:         }
39:     }
```


</details>

## [Low-16] Low Level Calls to Custom Addresses

### Resolution 
Low-level calls (such as `.call()`, `.delegatecall()`, or `.callcode()`) in Solidity provide a way to interact with other contracts or addresses. However, when these calls are made to addresses that are provided as parameters or are not well-validated, they pose a significant security risk. Untrusted addresses might contain malicious code leading to unexpected behavior, loss of funds, or vulnerabilities.

**Resolution**: Prefer using high-level Solidity function calls or interface-based interactions with known contracts to ensure security. If low-level calls are necessary, rigorously validate the addresses and test all possible interactions. Implementing additional checks and fail-safes can help mitigate potential risks associated with low-level calls.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[24](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L24-L28)']
```solidity
24:     function approve(address tokenAddr) external { // <= FOUND
25:         address tokenManager = tadleFactory.relatedContracts(
26:             RelatedContractLibraries.TOKEN_MANAGER
27:         );
28:         (bool success, ) = tokenAddr.call( // <= FOUND
29:             abi.encodeWithSelector(
30:                 APPROVE_SELECTOR,
31:                 tokenManager,
32:                 type(uint256).max
33:             )
34:         );
35: 
36:         if (!success) {
37:             revert ApproveFailed();
38:         }
39:     }
```


</details>

## [Low-17] Constructors missing validation

### Resolution 
In Solidity, when values are being assigned in constructors to unsigned or integer variables, it's crucial to ensure the provided values adhere to the protocol's specific operational boundaries as laid out in the project specifications and documentation. If the constructors lack appropriate validation checks, there's a risk of setting state variables with values that could cause unexpected and potentially detrimental behavior within the contract's operations, violating the intended logic of the protocol. This can compromise the contract's security and impact the maintainability and reliability of the system. In order to avoid such issues, it is recommended to incorporate rigorous validation checks in constructors. These checks should align with the project's defined rules and constraints, making use of Solidity's built-in require function to enforce these conditions. If the validation checks fail, the require function will cause the transaction to revert, ensuring the integrity and adherence to the protocol's expected behavior.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[40](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L40-L41)']
```solidity
40:     constructor(address _guardian) {
41:         guardian = _guardian; // <= FOUND
42:     }
```


</details>

## [Low-18] Inconsistent use of _msgSender() and msg.sender in contract

### Resolution 
For the sake of consistency, stick to using only one of these values throughout the contract. Not doing so in this case can be quite harmful as _msgSender and msg.sender do have some differences, one being that msgSender cannot be used to determine if an account is a EOA but msg.sender can. Differences like these can introduce vulnerabilities is they are not properly acknowledged by the dev team.

Num of instances: 3

### Findings 


<details><summary>Click to show findings</summary>

['[27](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L27-L277)']
```solidity
27: contract PreMarktes is PerMarketsStorage, Rescuable, Related, IPerMarkets {
28:     using Math for uint256;
97:                 _msgSender(), // <= FOUND


107:             authority: _msgSender(), // <= FOUND


118:             authority: _msgSender(), // <= FOUND


140:             authority: _msgSender(), // <= FOUND


153:             _msgSender(), // <= FOUND


200:             _msgSender() // <= FOUND


203:         uint256 platformFeeRate = systemConfig.getPlatformFeeRate(_msgSender()); // <= FOUND


245:             authority: _msgSender(), // <= FOUND


277:             msg.sender, // <= FOUND


309:         if (_msgSender() != stockInfo.authority) { // <= FOUND


357:                 _msgSender(), // <= FOUND


372:             authority: _msgSender(), // <= FOUND


392:             _msgSender(), // <= FOUND


414:         if (offerInfo.authority != _msgSender()) { // <= FOUND


452:                 _msgSender(), // <= FOUND


459:         emit CloseOffer(_offer, _msgSender()); // <= FOUND


478:         if (offerInfo.authority != _msgSender()) { // <= FOUND


516:                 _msgSender(), // <= FOUND


525:         emit RelistOffer(_offer, _msgSender()); // <= FOUND


540:         if (offerInfo.authority != _msgSender()) { // <= FOUND


626:             _msgSender(), // <= FOUND


634:         emit AbortAskOffer(_offer, _msgSender()); // <= FOUND


649:         if (stockInfo.authority != _msgSender()) { // <= FOUND


689:             _msgSender(), // <= FOUND


696:         emit AbortBidTaker(_offer, _msgSender()); // <= FOUND


708:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) { // <= FOUND


724:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) { // <= FOUND


742:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) { // <= FOUND


764:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) { // <= FOUND


832:             _msgSender(), // <= FOUND


883:                 _msgSender(), // <= FOUND


896:                 _msgSender(), // <= FOUND


944:                 _msgSender(), // <= FOUND


```
['[16](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L16-L75)']
```solidity
16: contract SystemConfig is SystemConfigStorage, Rescuable, ISystemConfig {
17:     constructor() Rescuable() {}
46:         if (_msgSender() == _referrer) { // <= FOUND


75:             msg.sender, // <= FOUND


```
['[22](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L22-L169)']
```solidity
22: contract TokenManager is
23:     TokenManagerStorage,
64:         onlyRelatedContracts(tadleFactory, _msgSender()) // <= FOUND


118:     ) external onlyRelatedContracts(tadleFactory, _msgSender()) { // <= FOUND


141:         uint256 claimAbleAmount = userTokenBalanceMap[_msgSender()][ // <= FOUND


169:             payable(msg.sender).transfer(claimAbleAmount); // <= FOUND


178:                 _msgSender(), // <= FOUND


184:             _msgSender(), // <= FOUND


```


</details>

## [Low-19] State variables not capped at reasonable values

### Resolution 
Setting boundaries on state variables in smart contracts is essential for maintaining system integrity and user protection. Without caps on values, variables could reach extremes that exploit or disrupt contract functionality, leading to potential loss or unintended consequences for users. Implementing checks for minimum and maximum permissible values can prevent such issues, ensuring variables remain within a safe and reasonable range. This practice guards against attacks aimed at destabilizing the contract, such as griefing, where attackers intentionally cause distress by exploiting vulnerabilities. Proper validation promotes contract reliability, user trust, and a healthier ecosystem by mitigating risks associated with unbounded state changes.

Num of instances: 3

### Findings 


<details><summary>Click to show findings</summary>

['[738](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L738-L746)']
```solidity
738:     function settledAskOffer(
739:         address _offer,
740:         uint256 _settledPoints,
741:         uint256 _settledPointTokenAmount
742:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) {
743:         OfferInfo storage offerInfo = offerInfoMap[_offer]; // <= FOUND
744:         offerInfo.settledPoints = _settledPoints; // <= FOUND
745:         offerInfo.settledPointTokenAmount = _settledPointTokenAmount; // <= FOUND
746:         offerInfo.offerStatus = OfferStatus.Settled; // <= FOUND
747: 
748:         emit SettledAskOffer(_offer, _settledPoints, _settledPointTokenAmount);
749:     }
```
['[199](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L199-L207)']
```solidity
199:     function updateReferralExtraRateMap(
200:         address _referrer,
201:         uint256 _extraRate
202:     ) external onlyOwner {
203:         uint256 totalRate = _extraRate + baseReferralRate; // <= FOUND
204:         if (totalRate > Constants.REFERRAL_RATE_DECIMAL_SCALER) {
205:             revert InvalidTotalRate(totalRate);
206:         }
207:         referralExtraRateMap[_referrer] = _extraRate; // <= FOUND
208:         emit UpdateReferralExtraRateMap(_referrer, _extraRate);
209:     }
```
['[120](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L120-L142)']
```solidity
120:     function updateMarket(
121:         string calldata _marketPlaceName,
122:         address _tokenAddress,
123:         uint256 _tokenPerPoint,
124:         uint256 _tge,
125:         uint256 _settlementPeriod
126:     ) external onlyOwner {
127:         address marketPlace = GenerateAddress.generateMarketPlaceAddress( // <= FOUND
128:             _marketPlaceName
129:         );
130: 
131:         MarketPlaceInfo storage marketPlaceInfo = marketPlaceInfoMap[ // <= FOUND
132:             marketPlace
133:         ];
134: 
135:         if (marketPlaceInfo.status != MarketPlaceStatus.Online) {
136:             revert MarketPlaceNotOnline(marketPlaceInfo.status);
137:         }
138: 
139:         marketPlaceInfo.tokenAddress = _tokenAddress; // <= FOUND
140:         marketPlaceInfo.tokenPerPoint = _tokenPerPoint; // <= FOUND
141:         marketPlaceInfo.tge = _tge; // <= FOUND
142:         marketPlaceInfo.settlementPeriod = _settlementPeriod; // <= FOUND
143: 
144:         emit UpdateMarket(
145:             _marketPlaceName,
146:             marketPlace,
147:             _tokenAddress,
148:             _tokenPerPoint,
149:             _tge,
150:             _settlementPeriod
151:         );
152:     }
```


</details>

## [Low-20] Use forceApprove in place of approve

### Resolution 
The forceApprove function is a specialized solution addressing the issues that arise with non-standard ERC-20 tokens, such as USDT, which exhibit non-standard behavior in their approve function. These tokens may necessitate setting the allowance to 0 before changing it, may not return a boolean value from approve calls, or may return false instead of reverting on failure. OpenZeppelin's SafeERC20 library includes a forceApprove method to safely handle these peculiarities, ensuring that smart contracts can interact with such tokens without transaction failures. It rectifies inconsistencies by ensuring that all token interactions, including approvals, adhere to expected standards, even when the underlying tokens do not. 

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[247](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L247-L247)']
```solidity
247:             ICapitalPool(_capitalPoolAddr).approve(address(this)); // <= FOUND
```


</details>

## [Low-21] Functions calling contracts/addresses with transfer hooks are missing reentrancy guards

### Resolution 
While adherence to the check-effects-interaction pattern is commendable, the absence of a reentrancy guard in functions, especially where transfer hooks might be present, can expose the protocol users to risks of read-only reentrancies. Such reentrancy vulnerabilities can be exploited to execute malicious actions even without altering the contract state. Without a reentrancy guard, the only potential mitigation would be to blocklist the entire protocol - an extreme and disruptive measure. Therefore, incorporating a reentrancy guard into these functions is vital to bolster security, as it helps protect against both traditional reentrancy attacks and read-only reentrancies, ensuring robust and safe protocol operations.

Num of instances: 4

### Findings 


<details><summary>Click to show findings</summary>

['[56](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L56-L79)']
```solidity
56:     function tillIn(
57:         address _accountAddress,
58:         address _tokenAddress,
59:         uint256 _amount,
60:         bool _isPointToken
61:     )
62:         external
63:         payable
64:         onlyRelatedContracts(tadleFactory, _msgSender())
65:         onlyInTokenWhiteList(_isPointToken, _tokenAddress)
66:     {
67:         
68:         if (_amount == 0) {
69:             return;
70:         }
71: 
72:         address capitalPoolAddr = tadleFactory.relatedContracts(
73:             RelatedContractLibraries.CAPITAL_POOL
74:         );
75:         if (capitalPoolAddr == address(0x0)) {
76:             revert Errors.ContractIsNotDeployed();
77:         }
78: 
79:         if (_tokenAddress == wrappedNativeToken) { // <= FOUND
80:             
81: 
86:             if (msg.value < _amount) {
87:                 revert Errors.NotEnoughMsgValue(msg.value, _amount);
88:             }
89:             IWrappedNativeToken(wrappedNativeToken).deposit{value: _amount}();
90:             _safe_transfer(wrappedNativeToken, capitalPoolAddr, _amount); // <= FOUND
91:         } else { // <= FOUND
92:             
93:             _transfer(
94:                 _tokenAddress,
95:                 _accountAddress,
96:                 capitalPoolAddr,
97:                 _amount,
98:                 capitalPoolAddr
99:             );
100:         }
101: 
102:         emit TillIn(_accountAddress, _tokenAddress, _amount, _isPointToken);
103:     }
```
['[137](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L137-L153)']
```solidity
137:     function withdraw(
138:         address _tokenAddress,
139:         TokenBalanceType _tokenBalanceType
140:     ) external whenNotPaused {
141:         uint256 claimAbleAmount = userTokenBalanceMap[_msgSender()][
142:             _tokenAddress
143:         ][_tokenBalanceType];
144: 
145:         if (claimAbleAmount == 0) {
146:             return;
147:         }
148: 
149:         address capitalPoolAddr = tadleFactory.relatedContracts(
150:             RelatedContractLibraries.CAPITAL_POOL
151:         );
152: 
153:         if (_tokenAddress == wrappedNativeToken) { // <= FOUND
154:             
155: 
160:             _transfer(
161:                 wrappedNativeToken,
162:                 capitalPoolAddr,
163:                 address(this),
164:                 claimAbleAmount,
165:                 capitalPoolAddr
166:             );
167: 
168:             IWrappedNativeToken(wrappedNativeToken).withdraw(claimAbleAmount);
169:             payable(msg.sender).transfer(claimAbleAmount);
170:         } else { // <= FOUND
171:             
172: 
175:             _safe_transfer_from(
176:                 _tokenAddress,
177:                 capitalPoolAddr,
178:                 _msgSender(),
179:                 claimAbleAmount
180:             );
181:         }
182: 
183:         emit Withdraw(
184:             _msgSender(),
185:             _tokenAddress,
186:             _tokenBalanceType,
187:             claimAbleAmount
188:         );
189:     }
```
['[56](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L56-L93)']
```solidity
56:     function tillIn(
57:         address _accountAddress,
58:         address _tokenAddress,
59:         uint256 _amount,
60:         bool _isPointToken
61:     )
62:         external
63:         payable
64:         onlyRelatedContracts(tadleFactory, _msgSender())
65:         onlyInTokenWhiteList(_isPointToken, _tokenAddress)
66:     {
67:         
68:         if (_amount == 0) {
69:             return;
70:         }
71: 
72:         address capitalPoolAddr = tadleFactory.relatedContracts(
73:             RelatedContractLibraries.CAPITAL_POOL
74:         );
75:         if (capitalPoolAddr == address(0x0)) {
76:             revert Errors.ContractIsNotDeployed();
77:         }
78: 
79:         if (_tokenAddress == wrappedNativeToken) {
80:             
81: 
86:             if (msg.value < _amount) {
87:                 revert Errors.NotEnoughMsgValue(msg.value, _amount);
88:             }
89:             IWrappedNativeToken(wrappedNativeToken).deposit{value: _amount}();
90:             _safe_transfer(wrappedNativeToken, capitalPoolAddr, _amount); // <= FOUND
91:         } else {
92:             
93:             _transfer( // <= FOUND
94:                 _tokenAddress,
95:                 _accountAddress,
96:                 capitalPoolAddr,
97:                 _amount,
98:                 capitalPoolAddr
99:             );
100:         }
101: 
102:         emit TillIn(_accountAddress, _tokenAddress, _amount, _isPointToken);
103:     }
```
['[137](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L137-L169)']
```solidity
137:     function withdraw(
138:         address _tokenAddress,
139:         TokenBalanceType _tokenBalanceType
140:     ) external whenNotPaused {
141:         uint256 claimAbleAmount = userTokenBalanceMap[_msgSender()][
142:             _tokenAddress
143:         ][_tokenBalanceType];
144: 
145:         if (claimAbleAmount == 0) {
146:             return;
147:         }
148: 
149:         address capitalPoolAddr = tadleFactory.relatedContracts(
150:             RelatedContractLibraries.CAPITAL_POOL
151:         );
152: 
153:         if (_tokenAddress == wrappedNativeToken) {
154:             
155: 
160:             _transfer( // <= FOUND
161:                 wrappedNativeToken,
162:                 capitalPoolAddr,
163:                 address(this),
164:                 claimAbleAmount,
165:                 capitalPoolAddr
166:             );
167: 
168:             IWrappedNativeToken(wrappedNativeToken).withdraw(claimAbleAmount);
169:             payable(msg.sender).transfer(claimAbleAmount); // <= FOUND
170:         } else {
171:             
172: 
175:             _safe_transfer_from(
176:                 _tokenAddress,
177:                 capitalPoolAddr,
178:                 _msgSender(),
179:                 claimAbleAmount
180:             );
181:         }
182: 
183:         emit Withdraw(
184:             _msgSender(),
185:             _tokenAddress,
186:             _tokenBalanceType,
187:             claimAbleAmount
188:         );
189:     }
```


</details>

## [Low-22] Solidity version 0.8.20 won't work on all chains due to PUSH0

### Resolution 
Solidity version 0.8.20 uses the new Shanghai EVM which introduces the PUSH0 opcode, this may not be implemented on all chains and L2 thus reducing the portability and compatability of the code. Consider using a earlier solidity version.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[2](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L2-L2)']
```solidity
2: pragma solidity ^0.8.13; // <= FOUND
```


</details>

## [Low-23] Missing events in functions that are either setters, privileged or voting related

### Resolution 
Sensitive setter functions in smart contracts often alter critical state variables. Without events emitted in these functions, external observers or dApps cannot easily track or react to these state changes. Missing events can obscure contract activity, hampering transparency and making integration more challenging. To resolve this, incorporate appropriate event emissions within these functions. Events offer an efficient way to log crucial changes, aiding in real-time tracking and post-transaction verification.

Num of instances: 5

### Findings 


<details><summary>Click to show findings</summary>

['[160](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L160-L160)']
```solidity
160:     function updateMarketPlaceStatus(
161:         string calldata _marketPlaceName,
162:         MarketPlaceStatus _status
163:     ) external onlyOwner 
```
['[197](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L197-L197)']
```solidity
197:     function updateTokenWhiteListed(
198:         address[] calldata _tokens,
199:         bool _isWhiteListed
200:     ) external onlyOwner 
```
['[906](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L906-L906)']
```solidity
906:     function _updateTokenBalanceWhenCreateTaker(
907:         address _offer,
908:         uint256 _tradeTax,
909:         uint256 _depositAmount,
910:         OfferInfo storage offerInfo,
911:         MakerInfo storage makerInfo,
912:         ITokenManager tokenManager
913:     ) internal 
```
['[25](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L25-L25)']
```solidity
25:     function initialize(
26:         uint256 _basePlatformFeeRate,
27:         uint256 _baseReferralRate
28:     ) external onlyOwner 
```
['[43](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L43-L43)']
```solidity
43:     function initialize(address _wrappedNativeToken) external onlyOwner 
```


</details>

## [Low-24] Indexed strings/bytes in events can result in data loss

### Resolution 
Indexed string and bytes variables in events can lead to unintended data loss. When these types are indexed, they are hashed into a 32-byte value, rather than preserving their actual contents. This hashing obscures the data, making it inaccessible to off-chain monitoring services. Unlike static variables or indexed primitive variables, the hashed representation of string and bytes variables prevents accurate data retrieval and monitoring, potentially complicating the tracking and analysis of event data. To maintain data transparency and usability, avoid indexing string and bytes variables in events and instead use non-indexed parameters for these data types.

Num of instances: 2

### Findings 


<details><summary>Click to show findings</summary>

['[54](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/ISystemConfig.sol#L54-L56)']
```solidity
54:     
55:     event CreateMarketPlaceInfo( // <= FOUND
56:         string indexed marketPlaceName, // <= FOUND
57:         address indexed marketPlaceAddress,
58:         bool indexed fixedratio
59:     );
```
['[61](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/ISystemConfig.sol#L61-L63)']
```solidity
61:     
62:     event UpdateMarket( // <= FOUND
63:         string indexed marketPlaceName, // <= FOUND
64:         address indexed marketPlaceAddress,
65:         address indexed tokenAddress,
66:         uint256 tokenPerPoint,
67:         uint256 tge,
68:         uint256 settlementPeriod
69:     );
```


</details>

## [Low-25] Avoid floating pragma in non interface/library files

### Resolution 
Avoid using floating pragmas in non-interface and non-library files to ensure contract compatibility and security. Floating pragmas like `pragma solidity ^0.8.0;` allow any compiler version that matches the specified range. While this can provide flexibility, it risks introducing unexpected behavior or vulnerabilities from future compiler versions. Instead, specify a fixed pragma version, such as `pragma solidity 0.8.0;`, to guarantee consistent behavior and security across deployments. This practice ensures that your contracts are tested and verified against a specific compiler version, reducing the risk of unforeseen issues and maintaining code reliability.

Num of instances: 11

### Findings 


<details><summary>Click to show findings</summary>

['[13](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L13-L13)']
```solidity
13: contract CapitalPool is CapitalPoolStorage, Rescuable, ICapitalPool 
```
['[22](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L22-L22)']
```solidity
22: contract DeliveryPlace is DeliveryPlaceStorage, Rescuable, IDeliveryPlace 
```
['[27](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L27-L27)']
```solidity
27: contract PreMarktes is PerMarketsStorage, Rescuable, Related, IPerMarkets 
```
['[16](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L16-L16)']
```solidity
16: contract SystemConfig is SystemConfigStorage, Rescuable, ISystemConfig 
```
['[22](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L22-L22)']
```solidity
22: contract TokenManager is
23:     TokenManagerStorage,
24:     Rescuable,
25:     Related,
26:     ITokenManager
27: 
```
['[17](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L17-L17)']
```solidity
17: contract TadleFactory is Context, ITadleFactory 
```
['[12](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/CapitalPoolStorage.sol#L12-L12)']
```solidity
12: contract CapitalPoolStorage is UpgradeableStorage 
```
['[12](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/DeliveryPlaceStorage.sol#L12-L12)']
```solidity
12: contract DeliveryPlaceStorage is UpgradeableStorage 
```
['[15](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/PerMarketsStorage.sol#L15-L15)']
```solidity
15: contract PerMarketsStorage is UpgradeableStorage 
```
['[15](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/SystemConfigStorage.sol#L15-L15)']
```solidity
15: contract SystemConfigStorage is UpgradeableStorage 
```
['[13](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/TokenManagerStorage.sol#L13-L13)']
```solidity
13: contract TokenManagerStorage is UpgradeableStorage 
```


</details>

## [Low-26] Solidity version 0.8.20 won't work on all chains due to PUSH0

### Resolution 
Solidity version 0.8.20 uses the new Shanghai EVM which introduces the PUSH0 opcode, this may not be implemented on all chains and L2 thus reducing the portability and compatability of the code. Consider using a earlier solidity version.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[2](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L2-L2)']
```solidity
2: pragma solidity ^0.8.13; // <= FOUND
```


</details>

## [Low-27] Read only reentrancy risk detected

Num of instances: 9

### Findings 


<details><summary>Click to show findings</summary>

['[536](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L536-L577)']
```solidity
536:     function abortAskOffer(address _stock, address _offer) external { // <= FOUND
537:         StockInfo storage stockInfo = stockInfoMap[_stock];
538:         OfferInfo storage offerInfo = offerInfoMap[_offer];
539: 
540:         if (offerInfo.authority != _msgSender()) {
541:             revert Errors.Unauthorized();
542:         }
543: 
544:         if (stockInfo.offer != _offer) {
545:             revert InvalidOfferAccount(stockInfo.offer, _offer);
546:         }
547: 
548:         if (offerInfo.offerType != OfferType.Ask) {
549:             revert InvalidOfferType(OfferType.Ask, offerInfo.offerType);
550:         }
551: 
552:         if (offerInfo.abortOfferStatus != AbortOfferStatus.Initialized) {
553:             revert InvalidAbortOfferStatus(
554:                 AbortOfferStatus.Initialized,
555:                 offerInfo.abortOfferStatus
556:             );
557:         }
558: 
559:         if (
560:             offerInfo.offerStatus != OfferStatus.Virgin &&
561:             offerInfo.offerStatus != OfferStatus.Canceled
562:         ) {
563:             revert InvalidOfferStatus();
564:         }
565: 
566:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
567: 
568:         if (
569:             makerInfo.offerSettleType == OfferSettleType.Turbo &&
570:             stockInfo.preOffer != address(0x0)
571:         ) {
572:             revert InvalidOffer();
573:         }
574: 
575:         
576:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
577:         MarketPlaceInfo memory marketPlaceInfo = systemConfig // <= FOUND
578:             .getMarketPlaceInfo(makerInfo.marketPlace);
579:         marketPlaceInfo.checkMarketPlaceStatus(
580:             block.timestamp,
581:             MarketPlaceStatus.Online
582:         );
583: 
584:         uint256 remainingAmount;
585:         if (offerInfo.offerStatus == OfferStatus.Virgin) {
586:             remainingAmount = offerInfo.amount;
587:         } else {
588:             remainingAmount = offerInfo.amount.mulDiv(
589:                 offerInfo.usedPoints,
590:                 offerInfo.points,
591:                 Math.Rounding.Floor
592:             );
593:         }
594: 
595:         uint256 transferAmount = OfferLibraries.getDepositAmount(
596:             offerInfo.offerType,
597:             offerInfo.collateralRate,
598:             remainingAmount,
599:             true,
600:             Math.Rounding.Floor
601:         );
602:         uint256 totalUsedAmount = offerInfo.amount.mulDiv(
603:             offerInfo.usedPoints,
604:             offerInfo.points,
605:             Math.Rounding.Ceil
606:         );
607:         uint256 totalDepositAmount = OfferLibraries.getDepositAmount(
608:             offerInfo.offerType,
609:             offerInfo.collateralRate,
610:             totalUsedAmount,
611:             false,
612:             Math.Rounding.Ceil
613:         );
614: 
615:         
616:         uint256 makerRefundAmount;
617:         if (transferAmount > totalDepositAmount) {
618:             makerRefundAmount = transferAmount - totalDepositAmount;
619:         } else {
620:             makerRefundAmount = 0;
621:         }
622: 
623:         ITokenManager tokenManager = tadleFactory.getTokenManager();
624:         tokenManager.addTokenBalance(
625:             TokenBalanceType.MakerRefund,
626:             _msgSender(),
627:             makerInfo.tokenAddress,
628:             makerRefundAmount
629:         );
630: 
631:         offerInfo.abortOfferStatus = AbortOfferStatus.Aborted;
632:         offerInfo.offerStatus = OfferStatus.Settled;
633: 
634:         emit AbortAskOffer(_offer, _msgSender());
635:     }
```
['[470](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L470-L490)']
```solidity
470:     function relistOffer(address _stock, address _offer) external payable { // <= FOUND
471:         OfferInfo storage offerInfo = offerInfoMap[_offer];
472:         StockInfo storage stockInfo = stockInfoMap[_stock];
473: 
474:         if (stockInfo.offer != _offer) {
475:             revert InvalidOfferAccount(stockInfo.offer, _offer);
476:         }
477: 
478:         if (offerInfo.authority != _msgSender()) {
479:             revert Errors.Unauthorized();
480:         }
481: 
482:         if (offerInfo.offerStatus != OfferStatus.Canceled) {
483:             revert InvalidOfferStatus();
484:         }
485: 
486:         
487:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
488: 
489:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
490:         MarketPlaceInfo memory marketPlaceInfo = systemConfig // <= FOUND
491:             .getMarketPlaceInfo(makerInfo.marketPlace);
492: 
493:         marketPlaceInfo.checkMarketPlaceStatus(
494:             block.timestamp,
495:             MarketPlaceStatus.Online
496:         );
497: 
498:         
499: 
502:         if (
503:             makerInfo.offerSettleType == OfferSettleType.Protected ||
504:             stockInfo.preOffer == address(0x0)
505:         ) {
506:             uint256 depositAmount = OfferLibraries.getRefundAmount(
507:                 offerInfo.offerType,
508:                 offerInfo.amount,
509:                 offerInfo.points,
510:                 offerInfo.usedPoints,
511:                 offerInfo.collateralRate
512:             );
513: 
514:             ITokenManager tokenManager = tadleFactory.getTokenManager();
515:             tokenManager.tillIn{value: msg.value}(
516:                 _msgSender(),
517:                 makerInfo.tokenAddress,
518:                 depositAmount,
519:                 false
520:             );
521:         }
522: 
523:         
524:         offerInfo.offerStatus = OfferStatus.Virgin;
525:         emit RelistOffer(_offer, _msgSender());
526:     }
```
['[406](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L406-L425)']
```solidity
406:     function closeOffer(address _stock, address _offer) external { // <= FOUND
407:         OfferInfo storage offerInfo = offerInfoMap[_offer];
408:         StockInfo storage stockInfo = stockInfoMap[_stock];
409: 
410:         if (stockInfo.offer != _offer) {
411:             revert InvalidOfferAccount(stockInfo.offer, _offer);
412:         }
413: 
414:         if (offerInfo.authority != _msgSender()) {
415:             revert Errors.Unauthorized();
416:         }
417: 
418:         if (offerInfo.offerStatus != OfferStatus.Virgin) {
419:             revert InvalidOfferStatus();
420:         }
421: 
422:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
423:         
424:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
425:         MarketPlaceInfo memory marketPlaceInfo = systemConfig // <= FOUND
426:             .getMarketPlaceInfo(makerInfo.marketPlace);
427: 
428:         marketPlaceInfo.checkMarketPlaceStatus(
429:             block.timestamp,
430:             MarketPlaceStatus.Online
431:         );
432: 
433:         
434: 
437:         if (
438:             makerInfo.offerSettleType == OfferSettleType.Protected ||
439:             stockInfo.preOffer == address(0x0)
440:         ) {
441:             uint256 refundAmount = OfferLibraries.getRefundAmount(
442:                 offerInfo.offerType,
443:                 offerInfo.amount,
444:                 offerInfo.points,
445:                 offerInfo.usedPoints,
446:                 offerInfo.collateralRate
447:             );
448: 
449:             ITokenManager tokenManager = tadleFactory.getTokenManager();
450:             tokenManager.addTokenBalance(
451:                 TokenBalanceType.MakerRefund,
452:                 _msgSender(),
453:                 makerInfo.tokenAddress,
454:                 refundAmount
455:             );
456:         }
457: 
458:         offerInfo.offerStatus = OfferStatus.Canceled;
459:         emit CloseOffer(_offer, _msgSender());
460:     }
```
['[295](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L295-L318)']
```solidity
295:     function listOffer(
296:         address _stock,
297:         uint256 _amount,
298:         uint256 _collateralRate
299:     ) external payable {
300:         if (_amount == 0x0) {
301:             revert Errors.AmountIsZero();
302:         }
303: 
304:         if (_collateralRate < Constants.COLLATERAL_RATE_DECIMAL_SCALER) {
305:             revert InvalidCollateralRate();
306:         }
307: 
308:         StockInfo storage stockInfo = stockInfoMap[_stock];
309:         if (_msgSender() != stockInfo.authority) {
310:             revert Errors.Unauthorized();
311:         }
312: 
313:         OfferInfo storage offerInfo = offerInfoMap[stockInfo.preOffer];
314:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
315: 
316:         
317:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
318:         MarketPlaceInfo memory marketPlaceInfo = systemConfig // <= FOUND
319:             .getMarketPlaceInfo(makerInfo.marketPlace);
320: 
321:         marketPlaceInfo.checkMarketPlaceStatus(
322:             block.timestamp,
323:             MarketPlaceStatus.Online
324:         );
325: 
326:         if (stockInfo.offer != address(0x0)) {
327:             revert OfferAlreadyExist();
328:         }
329: 
330:         if (stockInfo.stockType != StockType.Bid) {
331:             revert InvalidStockType(StockType.Bid, stockInfo.stockType);
332:         }
333: 
334:         
335:         if (makerInfo.offerSettleType == OfferSettleType.Turbo) {
336:             address originOffer = makerInfo.originOffer;
337:             OfferInfo memory originOfferInfo = offerInfoMap[originOffer];
338: 
339:             if (_collateralRate != originOfferInfo.collateralRate) {
340:                 revert InvalidCollateralRate();
341:             }
342:             originOfferInfo.abortOfferStatus = AbortOfferStatus.SubOfferListed;
343:         }
344: 
345:         
346:         if (makerInfo.offerSettleType == OfferSettleType.Protected) {
347:             uint256 transferAmount = OfferLibraries.getDepositAmount(
348:                 offerInfo.offerType,
349:                 offerInfo.collateralRate,
350:                 _amount,
351:                 true,
352:                 Math.Rounding.Ceil
353:             );
354: 
355:             ITokenManager tokenManager = tadleFactory.getTokenManager();
356:             tokenManager.tillIn{value: msg.value}(
357:                 _msgSender(),
358:                 makerInfo.tokenAddress,
359:                 transferAmount,
360:                 false
361:             );
362:         }
363: 
364:         address offerAddr = GenerateAddress.generateOfferAddress(stockInfo.id);
365:         if (offerInfoMap[offerAddr].authority != address(0x0)) {
366:             revert OfferAlreadyExist();
367:         }
368: 
369:         
370:         offerInfoMap[offerAddr] = OfferInfo({
371:             id: stockInfo.id,
372:             authority: _msgSender(),
373:             maker: offerInfo.maker,
374:             offerStatus: OfferStatus.Virgin,
375:             offerType: offerInfo.offerType,
376:             abortOfferStatus: AbortOfferStatus.Initialized,
377:             points: stockInfo.points,
378:             amount: _amount,
379:             collateralRate: _collateralRate,
380:             usedPoints: 0,
381:             tradeTax: 0,
382:             settledPoints: 0,
383:             settledPointTokenAmount: 0,
384:             settledCollateralAmount: 0
385:         });
386: 
387:         stockInfo.offer = offerAddr;
388: 
389:         emit ListOffer(
390:             offerAddr,
391:             _stock,
392:             _msgSender(),
393:             stockInfo.points,
394:             _amount
395:         );
396:     }
```
['[164](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L164-L191)']
```solidity
164:     function createTaker(address _offer, uint256 _points) external payable { // <= FOUND
165:         
166: 
170:         if (_points == 0x0) {
171:             revert Errors.AmountIsZero();
172:         }
173: 
174:         OfferInfo storage offerInfo = offerInfoMap[_offer];
175:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
176:         if (offerInfo.offerStatus != OfferStatus.Virgin) {
177:             revert InvalidOfferStatus();
178:         }
179: 
180:         if (offerInfo.points < _points + offerInfo.usedPoints) {
181:             revert NotEnoughPoints(
182:                 offerInfo.points,
183:                 offerInfo.usedPoints,
184:                 _points
185:             );
186:         }
187: 
188:         
189:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
190:         {
191:             MarketPlaceInfo memory marketPlaceInfo = systemConfig // <= FOUND
192:                 .getMarketPlaceInfo(makerInfo.marketPlace);
193:             marketPlaceInfo.checkMarketPlaceStatus(
194:                 block.timestamp,
195:                 MarketPlaceStatus.Online
196:             );
197:         }
198: 
199:         ReferralInfo memory referralInfo = systemConfig.getReferralInfo( // <= FOUND
200:             _msgSender()
201:         );
202: 
203:         uint256 platformFeeRate = systemConfig.getPlatformFeeRate(_msgSender()); // <= FOUND
204: 
205:         
206:         address stockAddr = GenerateAddress.generateStockAddress(offerId);
207:         if (stockInfoMap[stockAddr].authority != address(0x0)) {
208:             revert StockAlreadyExist();
209:         }
210: 
211:         
212:         uint256 depositAmount = _points.mulDiv(
213:             offerInfo.amount,
214:             offerInfo.points,
215:             Math.Rounding.Ceil
216:         );
217:         uint256 platformFee = depositAmount.mulDiv(
218:             platformFeeRate,
219:             Constants.PLATFORM_FEE_DECIMAL_SCALER
220:         );
221:         uint256 tradeTax = depositAmount.mulDiv(
222:             makerInfo.eachTradeTax,
223:             Constants.EACH_TRADE_TAX_DECIMAL_SCALER
224:         );
225: 
226:         ITokenManager tokenManager = tadleFactory.getTokenManager();
227:         _depositTokenWhenCreateTaker(
228:             platformFee,
229:             depositAmount,
230:             tradeTax,
231:             makerInfo,
232:             offerInfo,
233:             tokenManager
234:         );
235: 
236:         offerInfo.usedPoints = offerInfo.usedPoints + _points;
237: 
238:         
239:         stockInfoMap[stockAddr] = StockInfo({
240:             id: offerId,
241:             stockStatus: StockStatus.Initialized,
242:             stockType: offerInfo.offerType == OfferType.Ask
243:                 ? StockType.Bid
244:                 : StockType.Ask,
245:             authority: _msgSender(),
246:             maker: offerInfo.maker,
247:             preOffer: _offer,
248:             points: _points,
249:             amount: depositAmount,
250:             offer: address(0x0)
251:         });
252: 
253:         offerId = offerId + 1;
254:         uint256 remainingPlatformFee = _updateReferralBonus(
255:             platformFee,
256:             depositAmount,
257:             stockAddr,
258:             makerInfo,
259:             referralInfo,
260:             tokenManager
261:         );
262: 
263:         makerInfo.platformFee = makerInfo.platformFee + remainingPlatformFee;
264: 
265:         _updateTokenBalanceWhenCreateTaker(
266:             _offer,
267:             tradeTax,
268:             depositAmount,
269:             offerInfo,
270:             makerInfo,
271:             tokenManager
272:         );
273: 
274:         
275:         emit CreateTaker(
276:             _offer,
277:             msg.sender,
278:             stockAddr,
279:             _points,
280:             depositAmount,
281:             tradeTax,
282:             remainingPlatformFee
283:         );
284:     }
```
['[39](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L39-L59)']
```solidity
39:     function createOffer(CreateOfferParams calldata params) external payable { // <= FOUND
40:         
41: 
45:         if (params.points == 0x0 || params.amount == 0x0) {
46:             revert Errors.AmountIsZero();
47:         }
48: 
49:         if (params.eachTradeTax > Constants.EACH_TRADE_TAX_DECIMAL_SCALER) {
50:             revert InvalidEachTradeTaxRate();
51:         }
52: 
53:         if (params.collateralRate < Constants.COLLATERAL_RATE_DECIMAL_SCALER) {
54:             revert InvalidCollateralRate();
55:         }
56: 
57:         
58:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
59:         MarketPlaceInfo memory marketPlaceInfo = systemConfig // <= FOUND
60:             .getMarketPlaceInfo(params.marketPlace);
61:         marketPlaceInfo.checkMarketPlaceStatus(
62:             block.timestamp,
63:             MarketPlaceStatus.Online
64:         );
65: 
66:         
67:         address makerAddr = GenerateAddress.generateMakerAddress(offerId);
68:         address offerAddr = GenerateAddress.generateOfferAddress(offerId);
69:         address stockAddr = GenerateAddress.generateStockAddress(offerId);
70: 
71:         if (makerInfoMap[makerAddr].authority != address(0x0)) {
72:             revert MakerAlreadyExist();
73:         }
74: 
75:         if (offerInfoMap[offerAddr].authority != address(0x0)) {
76:             revert OfferAlreadyExist();
77:         }
78: 
79:         if (stockInfoMap[stockAddr].authority != address(0x0)) {
80:             revert StockAlreadyExist();
81:         }
82: 
83:         offerId = offerId + 1;
84: 
85:         {
86:             
87:             uint256 transferAmount = OfferLibraries.getDepositAmount(
88:                 params.offerType,
89:                 params.collateralRate,
90:                 params.amount,
91:                 true,
92:                 Math.Rounding.Ceil
93:             );
94: 
95:             ITokenManager tokenManager = tadleFactory.getTokenManager();
96:             tokenManager.tillIn{value: msg.value}(
97:                 _msgSender(),
98:                 params.tokenAddress,
99:                 transferAmount,
100:                 false
101:             );
102:         }
103: 
104:         
105:         makerInfoMap[makerAddr] = MakerInfo({
106:             offerSettleType: params.offerSettleType,
107:             authority: _msgSender(),
108:             marketPlace: params.marketPlace,
109:             tokenAddress: params.tokenAddress,
110:             originOffer: offerAddr,
111:             platformFee: 0,
112:             eachTradeTax: params.eachTradeTax
113:         });
114: 
115:         
116:         offerInfoMap[offerAddr] = OfferInfo({
117:             id: offerId,
118:             authority: _msgSender(),
119:             maker: makerAddr,
120:             offerStatus: OfferStatus.Virgin,
121:             offerType: params.offerType,
122:             points: params.points,
123:             amount: params.amount,
124:             collateralRate: params.collateralRate,
125:             abortOfferStatus: AbortOfferStatus.Initialized,
126:             usedPoints: 0,
127:             tradeTax: 0,
128:             settledPoints: 0,
129:             settledPointTokenAmount: 0,
130:             settledCollateralAmount: 0
131:         });
132: 
133:         
134:         stockInfoMap[stockAddr] = StockInfo({
135:             id: offerId,
136:             stockStatus: StockStatus.Initialized,
137:             stockType: params.offerType == OfferType.Ask
138:                 ? StockType.Bid
139:                 : StockType.Ask,
140:             authority: _msgSender(),
141:             maker: makerAddr,
142:             preOffer: address(0x0),
143:             offer: offerAddr,
144:             points: params.points,
145:             amount: params.amount
146:         });
147: 
148:         emit CreateOffer(
149:             offerAddr,
150:             makerAddr,
151:             stockAddr,
152:             params.marketPlace,
153:             _msgSender(),
154:             params.points,
155:             params.amount
156:         );
157:     }
```
['[435](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L435-L452)']
```solidity
435:     function getOfferInfo(
436:         address _offer
437:     )
438:         internal
439:         view
440:         returns (
441:             OfferInfo memory offerInfo,
442:             MakerInfo memory makerInfo,
443:             MarketPlaceInfo memory marketPlaceInfo,
444:             MarketPlaceStatus status
445:         )
446:     {
447:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
448:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
449: 
450:         offerInfo = perMarkets.getOfferInfo(_offer); // <= FOUND
451:         makerInfo = perMarkets.getMakerInfo(offerInfo.maker); // <= FOUND
452:         marketPlaceInfo = systemConfig.getMarketPlaceInfo( // <= FOUND
453:             makerInfo.marketPlace
454:         );
455: 
456:         status = MarketPlaceLibraries.getMarketPlaceStatus(
457:             block.timestamp,
458:             marketPlaceInfo
459:         );
460:     }
```
['[335](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L335-L337)']
```solidity
335:     function settleAskTaker(address _stock, uint256 _settledPoints) external { // <= FOUND
336:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
337:         StockInfo memory stockInfo = perMarkets.getStockInfo(_stock); // <= FOUND
338: 
339:         (
340:             OfferInfo memory offerInfo,
341:             MakerInfo memory makerInfo,
342:             MarketPlaceInfo memory marketPlaceInfo,
343:             MarketPlaceStatus status
344:         ) = getOfferInfo(stockInfo.preOffer);
345: 
346:         if (stockInfo.stockStatus != StockStatus.Initialized) {
347:             revert InvalidStockStatus();
348:         }
349: 
350:         if (marketPlaceInfo.fixedratio) {
351:             revert FixedRatioUnsupported();
352:         }
353:         if (stockInfo.stockType == StockType.Bid) {
354:             revert InvalidStockType();
355:         }
356:         if (_settledPoints > stockInfo.points) {
357:             revert InvalidPoints();
358:         }
359: 
360:         if (status == MarketPlaceStatus.AskSettling) {
361:             if (_msgSender() != offerInfo.authority) {
362:                 revert Errors.Unauthorized();
363:             }
364:         } else {
365:             if (_msgSender() != owner()) {
366:                 revert Errors.Unauthorized();
367:             }
368:             if (_settledPoints > 0) {
369:                 revert InvalidPoints();
370:             }
371:         }
372: 
373:         uint256 settledPointTokenAmount = marketPlaceInfo.tokenPerPoint *
374:             _settledPoints;
375:         ITokenManager tokenManager = tadleFactory.getTokenManager();
376:         if (settledPointTokenAmount > 0) {
377:             tokenManager.tillIn(
378:                 _msgSender(),
379:                 marketPlaceInfo.tokenAddress,
380:                 settledPointTokenAmount,
381:                 true
382:             );
383: 
384:             tokenManager.addTokenBalance(
385:                 TokenBalanceType.PointToken,
386:                 offerInfo.authority,
387:                 makerInfo.tokenAddress,
388:                 settledPointTokenAmount
389:             );
390:         }
391: 
392:         uint256 collateralFee = OfferLibraries.getDepositAmount(
393:             offerInfo.offerType,
394:             offerInfo.collateralRate,
395:             stockInfo.amount,
396:             false,
397:             Math.Rounding.Floor
398:         );
399: 
400:         if (_settledPoints == stockInfo.points) {
401:             tokenManager.addTokenBalance(
402:                 TokenBalanceType.RemainingCash,
403:                 _msgSender(),
404:                 makerInfo.tokenAddress,
405:                 collateralFee
406:             );
407:         } else {
408:             tokenManager.addTokenBalance(
409:                 TokenBalanceType.MakerRefund,
410:                 offerInfo.authority,
411:                 makerInfo.tokenAddress,
412:                 collateralFee
413:             );
414:         }
415: 
416:         perMarkets.settleAskTaker(
417:             stockInfo.preOffer,
418:             _stock,
419:             _settledPoints,
420:             settledPointTokenAmount
421:         );
422: 
423:         emit SettleAskTaker(
424:             makerInfo.marketPlace,
425:             offerInfo.maker,
426:             _stock,
427:             stockInfo.preOffer,
428:             _msgSender(),
429:             _settledPoints,
430:             settledPointTokenAmount,
431:             collateralFee
432:         );
433:     }
```
['[96](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L96-L99)']
```solidity
96:     function closeBidTaker(address _stock) external { // <= FOUND
97:         IPerMarkets perMarket
```


</details>

## [Low-28] Project contains upgradeable base contracts with `__gap` variables however there also exists base contracts which are not upgradeable and do not implement `__gap` variables

### Resolution 
In the project, there are upgradeable base contracts utilizing `__gap` variables to ensure a consistent storage layout during upgrades. However, the presence of non-upgradeable base contracts that do not implement `__gap` variables can lead to confusion and potential issues. While non-upgradeable contracts do not technically require `__gap` variables since they aren't subject to storage layout changes, the inconsistency in design can be misleading. It may cause developers to overlook necessary precautions when extending these contracts in an upgradeable context. To maintain clarity and best practices, clearly distinguish upgradeable from non-upgradeable contracts and consistently document their intended use cases and limitations.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[22](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L22-L22)']
```solidity
22: contract DeliveryPlace is DeliveryPlaceStorage, Rescuable, IDeliveryPlace {
23:     using Math for uint256;
24:     using RelatedContractLibraries for ITadleFactory;
25: 
67: }
```


</details>

## [NonCritical-1] Unsafe use of transfer()/transferFrom() with IERC20

### Resolution 
SafeTransfer should be used in place of Transfer for Solidity contracts to ensure robust security and error handling. Unlike the basic Transfer function, SafeTransfer incorporates safeguards against potential smart contract vulnerabilities, such as reentrancy attacks and unexpected token loss. By automatically validating the recipient's ability to receive tokens and reverting transactions in case of failures, 

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[137](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L137-L169)']
```solidity
137:     function withdraw(
138:         address _tokenAddress,
139:         TokenBalanceType _tokenBalanceType
140:     ) external whenNotPaused {
141:         uint256 claimAbleAmount = userTokenBalanceMap[_msgSender()][
142:             _tokenAddress
143:         ][_tokenBalanceType];
144: 
145:         if (claimAbleAmount == 0) {
146:             return;
147:         }
148: 
149:         address capitalPoolAddr = tadleFactory.relatedContracts(
150:             RelatedContractLibraries.CAPITAL_POOL
151:         );
152: 
153:         if (_tokenAddress == wrappedNativeToken) {
154:             
155: 
160:             _transfer(
161:                 wrappedNativeToken,
162:                 capitalPoolAddr,
163:                 address(this),
164:                 claimAbleAmount,
165:                 capitalPoolAddr
166:             );
167: 
168:             IWrappedNativeToken(wrappedNativeToken).withdraw(claimAbleAmount);
169:             payable(msg.sender).transfer(claimAbleAmount); // <= FOUND
170:         } else {
171:             
172: 
175:             _safe_transfer_from(
176:                 _tokenAddress,
177:                 capitalPoolAddr,
178:                 _msgSender(),
179:                 claimAbleAmount
180:             );
181:         }
182: 
183:         emit Withdraw(
184:             _msgSender(),
185:             _tokenAddress,
186:             _tokenBalanceType,
187:             claimAbleAmount
188:         );
189:     }
```


</details>

## [NonCritical-2] Floating pragma should be avoided

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[2](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L2-L2)']
```solidity
2: pragma solidity ^0.8.13; // <= FOUND
```


</details>

## [NonCritical-3] In functions which accept an address as a parameter, there should be a zero address check to prevent bugs

### Resolution 
In smart contract development, especially with Solidity, it's crucial to validate inputs to functions. When a function accepts an Ethereum address as a parameter, implementing a zero address check (i.e., ensuring the address is not `0x0`) is a best practice to prevent potential bugs and vulnerabilities. The zero address (`0x0`) is a default value and generally indicates an uninitialized or invalid state. Passing the zero address to certain functions can lead to unintended behaviors, like funds getting locked permanently or transactions failing silently. By checking for and rejecting the zero address, developers can ensure that the function operates as intended and interacts only with valid Ethereum addresses. This check enhances the contract's robustness and security.

Num of instances: 27

### Findings 


<details><summary>Click to show findings</summary>

['[24](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L24-L24)']
```solidity
24:     function approve(address tokenAddr) external 
```
['[35](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L35-L35)']
```solidity
35:     function closeBidOffer(address _offer) external 
```
['[222](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L222-L222)']
```solidity
222:     function settleAskMaker(address _offer, uint256 _settledPoints) external 
```
['[335](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L335-L335)']
```solidity
335:     function settleAskTaker(address _stock, uint256 _settledPoints) external 
```
['[435](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L435-L435)']
```solidity
435:     function getOfferInfo(
436:         address _offer
437:     )
438:         internal
439:         view
440:         returns (
441:             OfferInfo memory offerInfo,
442:             MakerInfo memory makerInfo,
443:             MarketPlaceInfo memory marketPlaceInfo,
444:             MarketPlaceStatus status
445:         )
446:     
```
['[645](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L645-L645)']
```solidity
645:     function abortBidTaker(address _stock, address _offer) external 
```
['[705](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L705-L705)']
```solidity
705:     function updateOfferStatus(
706:         address _offer,
707:         OfferStatus _status
708:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) 
```
['[721](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L721-L721)']
```solidity
721:     function updateStockStatus(
722:         address _stock,
723:         StockStatus _status
724:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) 
```
['[738](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L738-L738)']
```solidity
738:     function settledAskOffer(
739:         address _offer,
740:         uint256 _settledPoints,
741:         uint256 _settledPointTokenAmount
742:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) 
```
['[759](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L759-L759)']
```solidity
759:     function settleAskTaker(
760:         address _offer,
761:         address _stock,
762:         uint256 _settledPoints,
763:         uint256 _settledPointTokenAmount
764:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) 
```
['[787](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L787-L787)']
```solidity
787:     function getOfferInfo(
788:         address _offer
789:     ) external view returns (OfferInfo memory _offerInfo) 
```
['[797](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L797-L797)']
```solidity
797:     function getStockInfo(
798:         address _stock
799:     ) external view returns (StockInfo memory _stockInfo) 
```
['[807](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L807-L807)']
```solidity
807:     function getMakerInfo(
808:         address _maker
809:     ) external view returns (MakerInfo memory _makerInfo) 
```
['[906](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L906-L906)']
```solidity
906:     function _updateTokenBalanceWhenCreateTaker(
907:         address _offer,
908:         uint256 _tradeTax,
909:         uint256 _depositAmount,
910:         OfferInfo storage offerInfo,
911:         MakerInfo storage makerInfo,
912:         ITokenManager tokenManager
913:     ) internal 
```
['[120](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L120-L120)']
```solidity
120:     function updateMarket(
121:         string calldata _marketPlaceName,
122:         address _tokenAddress,
123:         uint256 _tokenPerPoint,
124:         uint256 _tge,
125:         uint256 _settlementPeriod
126:     ) external onlyOwner 
```
['[179](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L179-L179)']
```solidity
179:     function updateUserPlatformFeeRate(
180:         address _accountAddress,
181:         uint256 _platformFeeRate
182:     ) external onlyOwner 
```
['[199](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L199-L199)']
```solidity
199:     function updateReferralExtraRateMap(
200:         address _referrer,
201:         uint256 _extraRate
202:     ) external onlyOwner 
```
['[220](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L220-L220)']
```solidity
220:     function getPlatformFeeRate(address _user) external view returns (uint256) 
```
['[229](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L229-L229)']
```solidity
229:     function getReferralInfo(
230:         address _referrer
231:     ) external view returns (ReferralInfo memory) 
```
['[236](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L236-L236)']
```solidity
236:     function getMarketPlaceInfo(
237:         address _marketPlace
238:     ) external view returns (MarketPlaceInfo memory) 
```
['[43](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L43-L43)']
```solidity
43:     function initialize(address _wrappedNativeToken) external onlyOwner 
```
['[113](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L113-L113)']
```solidity
113:     function addTokenBalance(
114:         TokenBalanceType _tokenBalanceType,
115:         address _accountAddress,
116:         address _tokenAddress,
117:         uint256 _amount
118:     ) external onlyRelatedContracts(tadleFactory, _msgSender()) 
```
['[137](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L137-L137)']
```solidity
137:     function withdraw(
138:         address _tokenAddress,
139:         TokenBalanceType _tokenBalanceType
140:     ) external whenNotPaused 
```
['[197](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L197-L197)']
```solidity
197:     function updateTokenWhiteListed(
198:         address[] calldata _tokens,
199:         bool _isWhiteListed
200:     ) external onlyOwner 
```
['[216](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L216-L216)']
```solidity
216:     function _updateTokenWhiteListed(
217:         address _token,
218:         bool _isWhiteListed
219:     ) internal 
```
['[233](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L233-L233)']
```solidity
233:     function _transfer(
234:         address _token,
235:         address _from,
236:         address _to,
237:         uint256 _amount,
238:         address _capitalPoolAddr
239:     ) internal 
```
['[51](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L51-L51)']
```solidity
51:     function deployUpgradeableProxy(
52:         uint8 _relatedContractIndex,
53:         address _logic,
54:         bytes memory _data
55:     ) external onlyGuardian returns (address) 
```


</details>

## [NonCritical-4] Default int values are manually set

### Resolution 
In instances where a new variable is defined, there is no need to set it to it's default value.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[203](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L203-L203)']
```solidity
203:         for (uint256 i = 0; i < _tokensLength; ) { // <= FOUND
```


</details>

## [NonCritical-5] Revert statements within external and public functions can be used to perform DOS attacks

### Resolution 
In Solidity, 'revert' statements are used to undo changes and throw an exception when certain conditions are not met. However, in public and external functions, improper use of `revert` can be exploited for Denial of Service (DoS) attacks. An attacker can intentionally trigger these 'revert' conditions, causing legitimate transactions to consistently fail. For example, if a function relies on specific conditions from user input or contract state, an attacker could manipulate these to continually force reverts, blocking the function's execution. Therefore, it's crucial to design contract logic to handle exceptions properly and avoid scenarios where `revert` can be predictably triggered by malicious actors. This includes careful input validation and considering alternative design patterns that are less susceptible to such abuses.

Num of instances: 18

### Findings 


<details><summary>Click to show findings</summary>

['[24](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L24-L37)']
```solidity
24:     function approve(address tokenAddr) external {
25:         address tokenManager = tadleFactory.relatedContracts(
26:             RelatedContractLibraries.TOKEN_MANAGER
27:         );
28:         (bool success, ) = tokenAddr.call(
29:             abi.encodeWithSelector(
30:                 APPROVE_SELECTOR,
31:                 tokenManager,
32:                 type(uint256).max
33:             )
34:         );
35: 
36:         if (!success) {
37:             revert ApproveFailed(); // <= FOUND
38:         }
39:     }
```
['[35](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L35-L59)']
```solidity
35:     function closeBidOffer(address _offer) external {
36:         (
37:             OfferInfo memory offerInfo,
38:             MakerInfo memory makerInfo,
39:             ,
40:             MarketPlaceStatus status
41:         ) = getOfferInfo(_offer);
42: 
43:         if (_msgSender() != offerInfo.authority) {
44:             revert Errors.Unauthorized(); // <= FOUND
45:         }
46: 
47:         if (offerInfo.offerType == OfferType.Ask) {
48:             revert InvalidOfferType(OfferType.Bid, OfferType.Ask); // <= FOUND
49:         }
50: 
51:         if (
52:             status != MarketPlaceStatus.AskSettling &&
53:             status != MarketPlaceStatus.BidSettling
54:         ) {
55:             revert InvaildMarketPlaceStatus(); // <= FOUND
56:         }
57: 
58:         if (offerInfo.offerStatus != OfferStatus.Virgin) {
59:             revert InvalidOfferStatus(); // <= FOUND
60:         }
61: 
62:         uint256 refundAmount = OfferLibraries.getRefundAmount(
63:             offerInfo.offerType,
64:             offerInfo.amount,
65:             offerInfo.points,
66:             offerInfo.usedPoints,
67:             offerInfo.collateralRate
68:         );
69: 
70:         ITokenManager tokenManager = tadleFactory.getTokenManager();
71:         tokenManager.addTokenBalance(
72:             TokenBalanceType.MakerRefund,
73:             _msgSender(),
74:             makerInfo.tokenAddress,
75:             refundAmount
76:         );
77: 
78:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
79:         perMarkets.updateOfferStatus(_offer, OfferStatus.Settled);
80: 
81:         emit CloseBidOffer(
82:             makerInfo.marketPlace,
83:             offerInfo.maker,
84:             _offer,
85:             _msgSender()
86:         );
87:     }
```
['[96](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L96-L148)']
```solidity
96:     function closeBidTaker(address _stock) external {
97:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
98:         ITokenManager tokenManager = tadleFactory.getTokenManager();
99:         StockInfo memory stockInfo = perMarkets.getStockInfo(_stock);
100: 
101:         if (stockInfo.preOffer == address(0x0)) {
102:             revert InvalidStock(); // <= FOUND
103:         }
104: 
105:         if (stockInfo.stockType == StockType.Ask) {
106:             revert InvalidStockType(); // <= FOUND
107:         }
108: 
109:         if (_msgSender() != stockInfo.authority) {
110:             revert Errors.Unauthorized(); // <= FOUND
111:         }
112: 
113:         (
114:             OfferInfo memory preOfferInfo,
115:             MakerInfo memory makerInfo,
116:             ,
117: 
118:         ) = getOfferInfo(stockInfo.preOffer);
119: 
120:         OfferInfo memory offerInfo;
121:         uint256 userRemainingPoints;
122:         if (makerInfo.offerSettleType == OfferSettleType.Protected) {
123:             offerInfo = preOfferInfo;
124:             userRemainingPoints = stockInfo.points;
125:         } else {
126:             offerInfo = perMarkets.getOfferInfo(makerInfo.originOffer);
127:             if (stockInfo.offer == address(0x0)) {
128:                 userRemainingPoints = stockInfo.points;
129:             } else {
130:                 OfferInfo memory listOfferInfo = perMarkets.getOfferInfo(
131:                     stockInfo.offer
132:                 );
133:                 userRemainingPoints =
134:                     listOfferInfo.points -
135:                     listOfferInfo.usedPoints;
136:             }
137:         }
138: 
139:         if (userRemainingPoints == 0) {
140:             revert InsufficientRemainingPoints(); // <= FOUND
141:         }
142: 
143:         if (offerInfo.offerStatus != OfferStatus.Settled) {
144:             revert InvalidOfferStatus(); // <= FOUND
145:         }
146: 
147:         if (stockInfo.stockStatus != StockStatus.Initialized) {
148:             revert InvalidStockStatus(); // <= FOUND
149:         }
150: 
151:         uint256 collateralFee;
152:         if (offerInfo.usedPoints > offerInfo.settledPoints) {
153:             if (offerInfo.offerStatus == OfferStatus.Virgin) {
154:                 collateralFee = OfferLibraries.getDepositAmount(
155:                     offerInfo.offerType,
156:                     offerInfo.collateralRate,
157:                     offerInfo.amount,
158:                     true,
159:                     Math.Rounding.Floor
160:                 );
161:             } else {
162:                 uint256 usedAmount = offerInfo.amount.mulDiv(
163:                     offerInfo.usedPoints,
164:                     offerInfo.points,
165:                     Math.Rounding.Floor
166:                 );
167: 
168:                 collateralFee = OfferLibraries.getDepositAmount(
169:                     offerInfo.offerType,
170:                     offerInfo.collateralRate,
171:                     usedAmount,
172:                     true,
173:                     Math.Rounding.Floor
174:                 );
175:             }
176:         }
177: 
178:         uint256 userCollateralFee = collateralFee.mulDiv(
179:             userRemainingPoints,
180:             offerInfo.usedPoints,
181:             Math.Rounding.Floor
182:         );
183: 
184:         tokenManager.addTokenBalance(
185:             TokenBalanceType.RemainingCash,
186:             _msgSender(),
187:             makerInfo.tokenAddress,
188:             userCollateralFee
189:         );
190:         uint256 pointTokenAmount = offerInfo.settledPointTokenAmount.mulDiv(
191:             userRemainingPoints,
192:             offerInfo.usedPoints,
193:             Math.Rounding.Floor
194:         );
195:         tokenManager.addTokenBalance(
196:             TokenBalanceType.PointToken,
197:             _msgSender(),
198:             makerInfo.tokenAddress,
199:             pointTokenAmount
200:         );
201: 
202:         perMarkets.updateStockStatus(_stock, StockStatus.Finished);
203: 
204:         emit CloseBidTaker(
205:             makerInfo.marketPlace,
206:             offerInfo.maker,
207:             _stock,
208:             _msgSender(),
209:             userCollateralFee,
210:             pointTokenAmount
211:         );
212:     }
```
['[222](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L222-L258)']
```solidity
222:     function settleAskMaker(address _offer, uint256 _settledPoints) external {
223:         (
224:             OfferInfo memory offerInfo,
225:             MakerInfo memory makerInfo,
226:             MarketPlaceInfo memory marketPlaceInfo,
227:             MarketPlaceStatus status
228:         ) = getOfferInfo(_offer);
229: 
230:         if (_settledPoints > offerInfo.usedPoints) {
231:             revert InvalidPoints(); // <= FOUND
232:         }
233: 
234:         if (marketPlaceInfo.fixedratio) {
235:             revert FixedRatioUnsupported(); // <= FOUND
236:         }
237: 
238:         if (offerInfo.offerType == OfferType.Bid) {
239:             revert InvalidOfferType(OfferType.Ask, OfferType.Bid); // <= FOUND
240:         }
241: 
242:         if (
243:             offerInfo.offerStatus != OfferStatus.Virgin &&
244:             offerInfo.offerStatus != OfferStatus.Canceled
245:         ) {
246:             revert InvalidOfferStatus(); // <= FOUND
247:         }
248: 
249:         if (status == MarketPlaceStatus.AskSettling) {
250:             if (_msgSender() != offerInfo.authority) {
251:                 revert Errors.Unauthorized(); // <= FOUND
252:             }
253:         } else {
254:             if (_msgSender() != owner()) {
255:                 revert Errors.Unauthorized(); // <= FOUND
256:             }
257:             if (_settledPoints > 0) {
258:                 revert InvalidPoints(); // <= FOUND
259:             }
260:         }
261: 
262:         uint256 settledPointTokenAmount = marketPlaceInfo.tokenPerPoint *
263:             _settledPoints;
264: 
265:         ITokenManager tokenManager = tadleFactory.getTokenManager();
266:         if (settledPointTokenAmount > 0) {
267:             tokenManager.tillIn(
268:                 _msgSender(),
269:                 marketPlaceInfo.tokenAddress,
270:                 settledPointTokenAmount,
271:                 true
272:             );
273:         }
274: 
275:         uint256 makerRefundAmount;
276:         if (_settledPoints == offerInfo.usedPoints) {
277:             if (offerInfo.offerStatus == OfferStatus.Virgin) {
278:                 makerRefundAmount = OfferLibraries.getDepositAmount(
279:                     offerInfo.offerType,
280:                     offerInfo.collateralRate,
281:                     offerInfo.amount,
282:                     true,
283:                     Math.Rounding.Floor
284:                 );
285:             } else {
286:                 uint256 usedAmount = offerInfo.amount.mulDiv(
287:                     offerInfo.usedPoints,
288:                     offerInfo.points,
289:                     Math.Rounding.Floor
290:                 );
291: 
292:                 makerRefundAmount = OfferLibraries.getDepositAmount(
293:                     offerInfo.offerType,
294:                     offerInfo.collateralRate,
295:                     usedAmount,
296:                     true,
297:                     Math.Rounding.Floor
298:                 );
299:             }
300: 
301:             tokenManager.addTokenBalance(
302:                 TokenBalanceType.SalesRevenue,
303:                 _msgSender(),
304:                 makerInfo.tokenAddress,
305:                 makerRefundAmount
306:             );
307:         }
308: 
309:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
310:         perMarkets.settledAskOffer(
311:             _offer,
312:             _settledPoints,
313:             settledPointTokenAmount
314:         );
315: 
316:         emit SettleAskMaker(
317:             makerInfo.marketPlace,
318:             offerInfo.maker,
319:             _offer,
320:             _msgSender(),
321:             _settledPoints,
322:             settledPointTokenAmount,
323:             makerRefundAmount
324:         );
325:     }
```
['[335](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L335-L369)']
```solidity
335:     function settleAskTaker(address _stock, uint256 _settledPoints) external {
336:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
337:         StockInfo memory stockInfo = perMarkets.getStockInfo(_stock);
338: 
339:         (
340:             OfferInfo memory offerInfo,
341:             MakerInfo memory makerInfo,
342:             MarketPlaceInfo memory marketPlaceInfo,
343:             MarketPlaceStatus status
344:         ) = getOfferInfo(stockInfo.preOffer);
345: 
346:         if (stockInfo.stockStatus != StockStatus.Initialized) {
347:             revert InvalidStockStatus(); // <= FOUND
348:         }
349: 
350:         if (marketPlaceInfo.fixedratio) {
351:             revert FixedRatioUnsupported(); // <= FOUND
352:         }
353:         if (stockInfo.stockType == StockType.Bid) {
354:             revert InvalidStockType(); // <= FOUND
355:         }
356:         if (_settledPoints > stockInfo.points) {
357:             revert InvalidPoints(); // <= FOUND
358:         }
359: 
360:         if (status == MarketPlaceStatus.AskSettling) {
361:             if (_msgSender() != offerInfo.authority) {
362:                 revert Errors.Unauthorized(); // <= FOUND
363:             }
364:         } else {
365:             if (_msgSender() != owner()) {
366:                 revert Errors.Unauthorized(); // <= FOUND
367:             }
368:             if (_settledPoints > 0) {
369:                 revert InvalidPoints(); // <= FOUND
370:             }
371:         }
372: 
373:         uint256 settledPointTokenAmount = marketPlaceInfo.tokenPerPoint *
374:             _settledPoints;
375:         ITokenManager tokenManager = tadleFactory.getTokenManager();
376:         if (settledPointTokenAmount > 0) {
377:             tokenManager.tillIn(
378:                 _msgSender(),
379:                 marketPlaceInfo.tokenAddress,
380:                 settledPointTokenAmount,
381:                 true
382:             );
383: 
384:             tokenManager.addTokenBalance(
385:                 TokenBalanceType.PointToken,
386:                 offerInfo.authority,
387:                 makerInfo.tokenAddress,
388:                 settledPointTokenAmount
389:             );
390:         }
391: 
392:         uint256 collateralFee = OfferLibraries.getDepositAmount(
393:             offerInfo.offerType,
394:             offerInfo.collateralRate,
395:             stockInfo.amount,
396:             false,
397:             Math.Rounding.Floor
398:         );
399: 
400:         if (_settledPoints == stockInfo.points) {
401:             tokenManager.addTokenBalance(
402:                 TokenBalanceType.RemainingCash,
403:                 _msgSender(),
404:                 makerInfo.tokenAddress,
405:                 collateralFee
406:             );
407:         } else {
408:             tokenManager.addTokenBalance(
409:                 TokenBalanceType.MakerRefund,
410:                 offerInfo.authority,
411:                 makerInfo.tokenAddress,
412:                 collateralFee
413:             );
414:         }
415: 
416:         perMarkets.settleAskTaker(
417:             stockInfo.preOffer,
418:             _stock,
419:             _settledPoints,
420:             settledPointTokenAmount
421:         );
422: 
423:         emit SettleAskTaker(
424:             makerInfo.marketPlace,
425:             offerInfo.maker,
426:             _stock,
427:             stockInfo.preOffer,
428:             _msgSender(),
429:             _settledPoints,
430:             settledPointTokenAmount,
431:             collateralFee
432:         );
433:     }
```
['[39](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L39-L80)']
```solidity
39:     function createOffer(CreateOfferParams calldata params) external payable {
40:         
41: 
45:         if (params.points == 0x0 || params.amount == 0x0) {
46:             revert Errors.AmountIsZero(); // <= FOUND
47:         }
48: 
49:         if (params.eachTradeTax > Constants.EACH_TRADE_TAX_DECIMAL_SCALER) {
50:             revert InvalidEachTradeTaxRate(); // <= FOUND
51:         }
52: 
53:         if (params.collateralRate < Constants.COLLATERAL_RATE_DECIMAL_SCALER) {
54:             revert InvalidCollateralRate(); // <= FOUND
55:         }
56: 
57:         
58:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
59:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
60:             .getMarketPlaceInfo(params.marketPlace);
61:         marketPlaceInfo.checkMarketPlaceStatus(
62:             block.timestamp,
63:             MarketPlaceStatus.Online
64:         );
65: 
66:         
67:         address makerAddr = GenerateAddress.generateMakerAddress(offerId);
68:         address offerAddr = GenerateAddress.generateOfferAddress(offerId);
69:         address stockAddr = GenerateAddress.generateStockAddress(offerId);
70: 
71:         if (makerInfoMap[makerAddr].authority != address(0x0)) {
72:             revert MakerAlreadyExist(); // <= FOUND
73:         }
74: 
75:         if (offerInfoMap[offerAddr].authority != address(0x0)) {
76:             revert OfferAlreadyExist(); // <= FOUND
77:         }
78: 
79:         if (stockInfoMap[stockAddr].authority != address(0x0)) {
80:             revert StockAlreadyExist(); // <= FOUND
81:         }
82: 
83:         offerId = offerId + 1;
84: 
85:         {
86:             
87:             uint256 transferAmount = OfferLibraries.getDepositAmount(
88:                 params.offerType,
89:                 params.collateralRate,
90:                 params.amount,
91:                 true,
92:                 Math.Rounding.Ceil
93:             );
94: 
95:             ITokenManager tokenManager = tadleFactory.getTokenManager();
96:             tokenManager.tillIn{value: msg.value}(
97:                 _msgSender(),
98:                 params.tokenAddress,
99:                 transferAmount,
100:                 false
101:             );
102:         }
103: 
104:         
105:         makerInfoMap[makerAddr] = MakerInfo({
106:             offerSettleType: params.offerSettleType,
107:             authority: _msgSender(),
108:             marketPlace: params.marketPlace,
109:             tokenAddress: params.tokenAddress,
110:             originOffer: offerAddr,
111:             platformFee: 0,
112:             eachTradeTax: params.eachTradeTax
113:         });
114: 
115:         
116:         offerInfoMap[offerAddr] = OfferInfo({
117:             id: offerId,
118:             authority: _msgSender(),
119:             maker: makerAddr,
120:             offerStatus: OfferStatus.Virgin,
121:             offerType: params.offerType,
122:             points: params.points,
123:             amount: params.amount,
124:             collateralRate: params.collateralRate,
125:             abortOfferStatus: AbortOfferStatus.Initialized,
126:             usedPoints: 0,
127:             tradeTax: 0,
128:             settledPoints: 0,
129:             settledPointTokenAmount: 0,
130:             settledCollateralAmount: 0
131:         });
132: 
133:         
134:         stockInfoMap[stockAddr] = StockInfo({
135:             id: offerId,
136:             stockStatus: StockStatus.Initialized,
137:             stockType: params.offerType == OfferType.Ask
138:                 ? StockType.Bid
139:                 : StockType.Ask,
140:             authority: _msgSender(),
141:             maker: makerAddr,
142:             preOffer: address(0x0),
143:             offer: offerAddr,
144:             points: params.points,
145:             amount: params.amount
146:         });
147: 
148:         emit CreateOffer(
149:             offerAddr,
150:             makerAddr,
151:             stockAddr,
152:             params.marketPlace,
153:             _msgSender(),
154:             params.points,
155:             params.amount
156:         );
157:     }
```
['[164](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L164-L208)']
```solidity
164:     function createTaker(address _offer, uint256 _points) external payable {
165:         
166: 
170:         if (_points == 0x0) {
171:             revert Errors.AmountIsZero(); // <= FOUND
172:         }
173: 
174:         OfferInfo storage offerInfo = offerInfoMap[_offer];
175:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
176:         if (offerInfo.offerStatus != OfferStatus.Virgin) {
177:             revert InvalidOfferStatus(); // <= FOUND
178:         }
179: 
180:         if (offerInfo.points < _points + offerInfo.usedPoints) {
181:             revert NotEnoughPoints( // <= FOUND
182:                 offerInfo.points,
183:                 offerInfo.usedPoints,
184:                 _points
185:             );
186:         }
187: 
188:         
189:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
190:         {
191:             MarketPlaceInfo memory marketPlaceInfo = systemConfig
192:                 .getMarketPlaceInfo(makerInfo.marketPlace);
193:             marketPlaceInfo.checkMarketPlaceStatus(
194:                 block.timestamp,
195:                 MarketPlaceStatus.Online
196:             );
197:         }
198: 
199:         ReferralInfo memory referralInfo = systemConfig.getReferralInfo(
200:             _msgSender()
201:         );
202: 
203:         uint256 platformFeeRate = systemConfig.getPlatformFeeRate(_msgSender());
204: 
205:         
206:         address stockAddr = GenerateAddress.generateStockAddress(offerId);
207:         if (stockInfoMap[stockAddr].authority != address(0x0)) {
208:             revert StockAlreadyExist(); // <= FOUND
209:         }
210: 
211:         
212:         uint256 depositAmount = _points.mulDiv(
213:             offerInfo.amount,
214:             offerInfo.points,
215:             Math.Rounding.Ceil
216:         );
217:         uint256 platformFee = depositAmount.mulDiv(
218:             platformFeeRate,
219:             Constants.PLATFORM_FEE_DECIMAL_SCALER
220:         );
221:         uint256 tradeTax = depositAmount.mulDiv(
222:             makerInfo.eachTradeTax,
223:             Constants.EACH_TRADE_TAX_DECIMAL_SCALER
224:         );
225: 
226:         ITokenManager tokenManager = tadleFactory.getTokenManager();
227:         _depositTokenWhenCreateTaker(
228:             platformFee,
229:             depositAmount,
230:             tradeTax,
231:             makerInfo,
232:             offerInfo,
233:             tokenManager
234:         );
235: 
236:         offerInfo.usedPoints = offerInfo.usedPoints + _points;
237: 
238:         
239:         stockInfoMap[stockAddr] = StockInfo({
240:             id: offerId,
241:             stockStatus: StockStatus.Initialized,
242:             stockType: offerInfo.offerType == OfferType.Ask
243:                 ? StockType.Bid
244:                 : StockType.Ask,
245:             authority: _msgSender(),
246:             maker: offerInfo.maker,
247:             preOffer: _offer,
248:             points: _points,
249:             amount: depositAmount,
250:             offer: address(0x0)
251:         });
252: 
253:         offerId = offerId + 1;
254:         uint256 remainingPlatformFee = _updateReferralBonus(
255:             platformFee,
256:             depositAmount,
257:             stockAddr,
258:             makerInfo,
259:             referralInfo,
260:             tokenManager
261:         );
262: 
263:         makerInfo.platformFee = makerInfo.platformFee + remainingPlatformFee;
264: 
265:         _updateTokenBalanceWhenCreateTaker(
266:             _offer,
267:             tradeTax,
268:             depositAmount,
269:             offerInfo,
270:             makerInfo,
271:             tokenManager
272:         );
273: 
274:         
275:         emit CreateTaker(
276:             _offer,
277:             msg.sender,
278:             stockAddr,
279:             _points,
280:             depositAmount,
281:             tradeTax,
282:             remainingPlatformFee
283:         );
284:     }
```
['[295](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L295-L366)']
```solidity
295:     function listOffer(
296:         address _stock,
297:         uint256 _amount,
298:         uint256 _collateralRate
299:     ) external payable {
300:         if (_amount == 0x0) {
301:             revert Errors.AmountIsZero(); // <= FOUND
302:         }
303: 
304:         if (_collateralRate < Constants.COLLATERAL_RATE_DECIMAL_SCALER) {
305:             revert InvalidCollateralRate(); // <= FOUND
306:         }
307: 
308:         StockInfo storage stockInfo = stockInfoMap[_stock];
309:         if (_msgSender() != stockInfo.authority) {
310:             revert Errors.Unauthorized(); // <= FOUND
311:         }
312: 
313:         OfferInfo storage offerInfo = offerInfoMap[stockInfo.preOffer];
314:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
315: 
316:         
317:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
318:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
319:             .getMarketPlaceInfo(makerInfo.marketPlace);
320: 
321:         marketPlaceInfo.checkMarketPlaceStatus(
322:             block.timestamp,
323:             MarketPlaceStatus.Online
324:         );
325: 
326:         if (stockInfo.offer != address(0x0)) {
327:             revert OfferAlreadyExist(); // <= FOUND
328:         }
329: 
330:         if (stockInfo.stockType != StockType.Bid) {
331:             revert InvalidStockType(StockType.Bid, stockInfo.stockType); // <= FOUND
332:         }
333: 
334:         
335:         if (makerInfo.offerSettleType == OfferSettleType.Turbo) {
336:             address originOffer = makerInfo.originOffer;
337:             OfferInfo memory originOfferInfo = offerInfoMap[originOffer];
338: 
339:             if (_collateralRate != originOfferInfo.collateralRate) {
340:                 revert InvalidCollateralRate(); // <= FOUND
341:             }
342:             originOfferInfo.abortOfferStatus = AbortOfferStatus.SubOfferListed;
343:         }
344: 
345:         
346:         if (makerInfo.offerSettleType == OfferSettleType.Protected) {
347:             uint256 transferAmount = OfferLibraries.getDepositAmount(
348:                 offerInfo.offerType,
349:                 offerInfo.collateralRate,
350:                 _amount,
351:                 true,
352:                 Math.Rounding.Ceil
353:             );
354: 
355:             ITokenManager tokenManager = tadleFactory.getTokenManager();
356:             tokenManager.tillIn{value: msg.value}(
357:                 _msgSender(),
358:                 makerInfo.tokenAddress,
359:                 transferAmount,
360:                 false
361:             );
362:         }
363: 
364:         address offerAddr = GenerateAddress.generateOfferAddress(stockInfo.id);
365:         if (offerInfoMap[offerAddr].authority != address(0x0)) {
366:             revert OfferAlreadyExist(); // <= FOUND
367:         }
368: 
369:         
370:         offerInfoMap[offerAddr] = OfferInfo({
371:             id: stockInfo.id,
372:             authority: _msgSender(),
373:             maker: offerInfo.maker,
374:             offerStatus: OfferStatus.Virgin,
375:             offerType: offerInfo.offerType,
376:             abortOfferStatus: AbortOfferStatus.Initialized,
377:             points: stockInfo.points,
378:             amount: _amount,
379:             collateralRate: _collateralRate,
380:             usedPoints: 0,
381:             tradeTax: 0,
382:             settledPoints: 0,
383:             settledPointTokenAmount: 0,
384:             settledCollateralAmount: 0
385:         });
386: 
387:         stockInfo.offer = offerAddr;
388: 
389:         emit ListOffer(
390:             offerAddr,
391:             _stock,
392:             _msgSender(),
393:             stockInfo.points,
394:             _amount
395:         );
396:     }
```
['[406](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L406-L419)']
```solidity
406:     function closeOffer(address _stock, address _offer) external {
407:         OfferInfo storage offerInfo = offerInfoMap[_offer];
408:         StockInfo storage stockInfo = stockInfoMap[_stock];
409: 
410:         if (stockInfo.offer != _offer) {
411:             revert InvalidOfferAccount(stockInfo.offer, _offer); // <= FOUND
412:         }
413: 
414:         if (offerInfo.authority != _msgSender()) {
415:             revert Errors.Unauthorized(); // <= FOUND
416:         }
417: 
418:         if (offerInfo.offerStatus != OfferStatus.Virgin) {
419:             revert InvalidOfferStatus(); // <= FOUND
420:         }
421: 
422:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
423:         
424:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
425:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
426:             .getMarketPlaceInfo(makerInfo.marketPlace);
427: 
428:         marketPlaceInfo.checkMarketPlaceStatus(
429:             block.timestamp,
430:             MarketPlaceStatus.Online
431:         );
432: 
433:         
434: 
437:         if (
438:             makerInfo.offerSettleType == OfferSettleType.Protected ||
439:             stockInfo.preOffer == address(0x0)
440:         ) {
441:             uint256 refundAmount = OfferLibraries.getRefundAmount(
442:                 offerInfo.offerType,
443:                 offerInfo.amount,
444:                 offerInfo.points,
445:                 offerInfo.usedPoints,
446:                 offerInfo.collateralRate
447:             );
448: 
449:             ITokenManager tokenManager = tadleFactory.getTokenManager();
450:             tokenManager.addTokenBalance(
451:                 TokenBalanceType.MakerRefund,
452:                 _msgSender(),
453:                 makerInfo.tokenAddress,
454:                 refundAmount
455:             );
456:         }
457: 
458:         offerInfo.offerStatus = OfferStatus.Canceled;
459:         emit CloseOffer(_offer, _msgSender());
460:     }
```
['[470](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L470-L483)']
```solidity
470:     function relistOffer(address _stock, address _offer) external payable {
471:         OfferInfo storage offerInfo = offerInfoMap[_offer];
472:         StockInfo storage stockInfo = stockInfoMap[_stock];
473: 
474:         if (stockInfo.offer != _offer) {
475:             revert InvalidOfferAccount(stockInfo.offer, _offer); // <= FOUND
476:         }
477: 
478:         if (offerInfo.authority != _msgSender()) {
479:             revert Errors.Unauthorized(); // <= FOUND
480:         }
481: 
482:         if (offerInfo.offerStatus != OfferStatus.Canceled) {
483:             revert InvalidOfferStatus(); // <= FOUND
484:         }
485: 
486:         
487:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
488: 
489:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
490:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
491:             .getMarketPlaceInfo(makerInfo.marketPlace);
492: 
493:         marketPlaceInfo.checkMarketPlaceStatus(
494:             block.timestamp,
495:             MarketPlaceStatus.Online
496:         );
497: 
498:         
499: 
502:         if (
503:             makerInfo.offerSettleType == OfferSettleType.Protected ||
504:             stockInfo.preOffer == address(0x0)
505:         ) {
506:             uint256 depositAmount = OfferLibraries.getRefundAmount(
507:                 offerInfo.offerType,
508:                 offerInfo.amount,
509:                 offerInfo.points,
510:                 offerInfo.usedPoints,
511:                 offerInfo.collateralRate
512:             );
513: 
514:             ITokenManager tokenManager = tadleFactory.getTokenManager();
515:             tokenManager.tillIn{value: msg.value}(
516:                 _msgSender(),
517:                 makerInfo.tokenAddress,
518:                 depositAmount,
519:                 false
520:             );
521:         }
522: 
523:         
524:         offerInfo.offerStatus = OfferStatus.Virgin;
525:         emit RelistOffer(_offer, _msgSender());
526:     }
```
['[536](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L536-L572)']
```solidity
536:     function abortAskOffer(address _stock, address _offer) external {
537:         StockInfo storage stockInfo = stockInfoMap[_stock];
538:         OfferInfo storage offerInfo = offerInfoMap[_offer];
539: 
540:         if (offerInfo.authority != _msgSender()) {
541:             revert Errors.Unauthorized(); // <= FOUND
542:         }
543: 
544:         if (stockInfo.offer != _offer) {
545:             revert InvalidOfferAccount(stockInfo.offer, _offer); // <= FOUND
546:         }
547: 
548:         if (offerInfo.offerType != OfferType.Ask) {
549:             revert InvalidOfferType(OfferType.Ask, offerInfo.offerType); // <= FOUND
550:         }
551: 
552:         if (offerInfo.abortOfferStatus != AbortOfferStatus.Initialized) {
553:             revert InvalidAbortOfferStatus( // <= FOUND
554:                 AbortOfferStatus.Initialized,
555:                 offerInfo.abortOfferStatus
556:             );
557:         }
558: 
559:         if (
560:             offerInfo.offerStatus != OfferStatus.Virgin &&
561:             offerInfo.offerStatus != OfferStatus.Canceled
562:         ) {
563:             revert InvalidOfferStatus(); // <= FOUND
564:         }
565: 
566:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
567: 
568:         if (
569:             makerInfo.offerSettleType == OfferSettleType.Turbo &&
570:             stockInfo.preOffer != address(0x0)
571:         ) {
572:             revert InvalidOffer(); // <= FOUND
573:         }
574: 
575:         
576:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
577:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
578:             .getMarketPlaceInfo(makerInfo.marketPlace);
579:         marketPlaceInfo.checkMarketPlaceStatus(
580:             block.timestamp,
581:             MarketPlaceStatus.Online
582:         );
583: 
584:         uint256 remainingAmount;
585:         if (offerInfo.offerStatus == OfferStatus.Virgin) {
586:             remainingAmount = offerInfo.amount;
587:         } else {
588:             remainingAmount = offerInfo.amount.mulDiv(
589:                 offerInfo.usedPoints,
590:                 offerInfo.points,
591:                 Math.Rounding.Floor
592:             );
593:         }
594: 
595:         uint256 transferAmount = OfferLibraries.getDepositAmount(
596:             offerInfo.offerType,
597:             offerInfo.collateralRate,
598:             remainingAmount,
599:             true,
600:             Math.Rounding.Floor
601:         );
602:         uint256 totalUsedAmount = offerInfo.amount.mulDiv(
603:             offerInfo.usedPoints,
604:             offerInfo.points,
605:             Math.Rounding.Ceil
606:         );
607:         uint256 totalDepositAmount = OfferLibraries.getDepositAmount(
608:             offerInfo.offerType,
609:             offerInfo.collateralRate,
610:             totalUsedAmount,
611:             false,
612:             Math.Rounding.Ceil
613:         );
614: 
615:         
616:         uint256 makerRefundAmount;
617:         if (transferAmount > totalDepositAmount) {
618:             makerRefundAmount = transferAmount - totalDepositAmount;
619:         } else {
620:             makerRefundAmount = 0;
621:         }
622: 
623:         ITokenManager tokenManager = tadleFactory.getTokenManager();
624:         tokenManager.addTokenBalance(
625:             TokenBalanceType.MakerRefund,
626:             _msgSender(),
627:             makerInfo.tokenAddress,
628:             makerRefundAmount
629:         );
630: 
631:         offerInfo.abortOfferStatus = AbortOfferStatus.Aborted;
632:         offerInfo.offerStatus = OfferStatus.Settled;
633: 
634:         emit AbortAskOffer(_offer, _msgSender());
635:     }
```
['[645](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L645-L665)']
```solidity
645:     function abortBidTaker(address _stock, address _offer) external {
646:         StockInfo storage stockInfo = stockInfoMap[_stock];
647:         OfferInfo storage preOfferInfo = offerInfoMap[_offer];
648: 
649:         if (stockInfo.authority != _msgSender()) {
650:             revert Errors.Unauthorized(); // <= FOUND
651:         }
652: 
653:         if (stockInfo.preOffer != _offer) {
654:             revert InvalidOfferAccount(stockInfo.preOffer, _offer); // <= FOUND
655:         }
656: 
657:         if (stockInfo.stockStatus != StockStatus.Initialized) {
658:             revert InvalidStockStatus( // <= FOUND
659:                 StockStatus.Initialized,
660:                 stockInfo.stockStatus
661:             );
662:         }
663: 
664:         if (preOfferInfo.abortOfferStatus != AbortOfferStatus.Aborted) {
665:             revert InvalidAbortOfferStatus( // <= FOUND
666:                 AbortOfferStatus.Aborted,
667:                 preOfferInfo.abortOfferStatus
668:             );
669:         }
670: 
671:         uint256 depositAmount = stockInfo.points.mulDiv(
672:             preOfferInfo.points,
673:             preOfferInfo.amount,
674:             Math.Rounding.Floor
675:         );
676: 
677:         uint256 transferAmount = OfferLibraries.getDepositAmount(
678:             preOfferInfo.offerType,
679:             preOfferInfo.collateralRate,
680:             depositAmount,
681:             false,
682:             Math.Rounding.Floor
683:         );
684: 
685:         MakerInfo storage makerInfo = makerInfoMap[preOfferInfo.maker];
686:         ITokenManager tokenManager = tadleFactory.getTokenManager();
687:         tokenManager.addTokenBalance(
688:             TokenBalanceType.MakerRefund,
689:             _msgSender(),
690:             makerInfo.tokenAddress,
691:             transferAmount
692:         );
693: 
694:         stockInfo.stockStatus = StockStatus.Finished;
695: 
696:         emit AbortBidTaker(_offer, _msgSender());
697:     }
```
['[41](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L41-L66)']
```solidity
41:     function updateReferrerInfo(
42:         address _referrer,
43:         uint256 _referrerRate,
44:         uint256 _authorityRate
45:     ) external {
46:         if (_msgSender() == _referrer) {
47:             revert InvalidReferrer(_referrer); // <= FOUND
48:         }
49: 
50:         if (_referrer == address(0x0)) {
51:             revert Errors.ZeroAddress(); // <= FOUND
52:         }
53: 
54:         if (_referrerRate < baseReferralRate) {
55:             revert InvalidReferrerRate(_referrerRate); // <= FOUND
56:         }
57: 
58:         uint256 referralExtraRate = referralExtraRateMap[_referrer];
59:         uint256 totalRate = baseReferralRate + referralExtraRate;
60: 
61:         if (totalRate > Constants.REFERRAL_RATE_DECIMAL_SCALER) {
62:             revert InvalidTotalRate(totalRate); // <= FOUND
63:         }
64: 
65:         if (_referrerRate + _authorityRate != totalRate) {
66:             revert InvalidRate(_referrerRate, _authorityRate, totalRate); // <= FOUND
67:         }
68: 
69:         ReferralInfo storage referralInfo = referralInfoMap[_referrer];
70:         referralInfo.referrer = _referrer;
71:         referralInfo.referrerRate = _referrerRate;
72:         referralInfo.authorityRate = _authorityRate;
73: 
74:         emit UpdateReferrerInfo(
75:             msg.sender,
76:             _referrer,
77:             _referrerRate,
78:             _authorityRate
79:         );
80:     }
```
['[90](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L90-L102)']
```solidity
90:     function createMarketPlace(
91:         string calldata _marketPlaceName,
92:         bool _fixedratio
93:     ) external onlyOwner {
94:         address marketPlace = GenerateAddress.generateMarketPlaceAddress(
95:             _marketPlaceName
96:         );
97:         MarketPlaceInfo storage marketPlaceInfo = marketPlaceInfoMap[
98:             marketPlace
99:         ];
100: 
101:         if (marketPlaceInfo.status != MarketPlaceStatus.UnInitialized) {
102:             revert MarketPlaceAlreadyInitialized(); // <= FOUND
103:         }
104: 
105:         marketPlaceInfo.status = MarketPlaceStatus.Online;
106:         marketPlaceInfo.fixedratio = _fixedratio;
107: 
108:         emit CreateMarketPlaceInfo(_marketPlaceName, marketPlace, _fixedratio);
109:     }
```
['[120](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L120-L136)']
```solidity
120:     function updateMarket(
121:         string calldata _marketPlaceName,
122:         address _tokenAddress,
123:         uint256 _tokenPerPoint,
124:         uint256 _tge,
125:         uint256 _settlementPeriod
126:     ) external onlyOwner {
127:         address marketPlace = GenerateAddress.generateMarketPlaceAddress(
128:             _marketPlaceName
129:         );
130: 
131:         MarketPlaceInfo storage marketPlaceInfo = marketPlaceInfoMap[
132:             marketPlace
133:         ];
134: 
135:         if (marketPlaceInfo.status != MarketPlaceStatus.Online) {
136:             revert MarketPlaceNotOnline(marketPlaceInfo.status); // <= FOUND
137:         }
138: 
139:         marketPlaceInfo.tokenAddress = _tokenAddress;
140:         marketPlaceInfo.tokenPerPoint = _tokenPerPoint;
141:         marketPlaceInfo.tge = _tge;
142:         marketPlaceInfo.settlementPeriod = _settlementPeriod;
143: 
144:         emit UpdateMarket(
145:             _marketPlaceName,
146:             marketPlace,
147:             _tokenAddress,
148:             _tokenPerPoint,
149:             _tge,
150:             _settlementPeriod
151:         );
152:     }
```
['[199](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L199-L205)']
```solidity
199:     function updateReferralExtraRateMap(
200:         address _referrer,
201:         uint256 _extraRate
202:     ) external onlyOwner {
203:         uint256 totalRate = _extraRate + baseReferralRate;
204:         if (totalRate > Constants.REFERRAL_RATE_DECIMAL_SCALER) {
205:             revert InvalidTotalRate(totalRate); // <= FOUND
206:         }
207:         referralExtraRateMap[_referrer] = _extraRate;
208:         emit UpdateReferralExtraRateMap(_referrer, _extraRate);
209:     }
```
['[56](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L56-L87)']
```solidity
56:     function tillIn(
57:         address _accountAddress,
58:         address _tokenAddress,
59:         uint256 _amount,
60:         bool _isPointToken
61:     )
62:         external
63:         payable
64:         onlyRelatedContracts(tadleFactory, _msgSender())
65:         onlyInTokenWhiteList(_isPointToken, _tokenAddress)
66:     {
67:         
68:         if (_amount == 0) {
69:             return;
70:         }
71: 
72:         address capitalPoolAddr = tadleFactory.relatedContracts(
73:             RelatedContractLibraries.CAPITAL_POOL
74:         );
75:         if (capitalPoolAddr == address(0x0)) {
76:             revert Errors.ContractIsNotDeployed(); // <= FOUND
77:         }
78: 
79:         if (_tokenAddress == wrappedNativeToken) {
80:             
81: 
86:             if (msg.value < _amount) {
87:                 revert Errors.NotEnoughMsgValue(msg.value, _amount); // <= FOUND
88:             }
89:             IWrappedNativeToken(wrappedNativeToken).deposit{value: _amount}();
90:             _safe_transfer(wrappedNativeToken, capitalPoolAddr, _amount);
91:         } else {
92:             
93:             _transfer(
94:                 _tokenAddress,
95:                 _accountAddress,
96:                 capitalPoolAddr,
97:                 _amount,
98:                 capitalPoolAddr
99:             );
100:         }
101: 
102:         emit TillIn(_accountAddress, _tokenAddress, _amount, _isPointToken);
103:     }
```
['[51](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L51-L58)']
```solidity
51:     function deployUpgradeableProxy(
52:         uint8 _relatedContractIndex,
53:         address _logic,
54:         bytes memory _data
55:     ) external onlyGuardian returns (address) {
56:         
57:         if (!_logic.isContract()) {
58:             revert LogicAddrIsNotContract(_logic); // <= FOUND
59:         }
60: 
61:         
62:         UpgradeableProxy _proxy = new UpgradeableProxy(
63:             _logic,
64:             guardian,
65:             address(this),
66:             _data
67:         );
68:         relatedContracts[_relatedContractIndex] = address(_proxy);
69:         emit RelatedContractDeployed(_relatedContractIndex, address(_proxy));
70:         return address(_proxy);
71:     }
```


</details>

## [NonCritical-6] Reverts should use custom errors instead of strings

### Resolution 
Custom error codes should be used in place of strings for revert statements in Solidity contracts to enhance efficiency and reduce gas costs. String-based error messages consume more bytecode and storage, increasing the overall gas consumption during contract deployment and execution

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[65](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/MarketPlaceLibraries.sol#L65-L65)']
```solidity
65:             revert("Mismatched Marketplace status"); // <= FOUND
```


</details>

## [NonCritical-7] Functions which are either private or internal should have a preceding _ in their name

### Resolution 
Add a preceding underscore to the function name, take care to refactor where there functions are called

Num of instances: 5

### Findings 


<details><summary>Click to show findings</summary>

['[435](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L435-L435)']
```solidity
435:     function getOfferInfo(
436:         address _offer
437:     )
438:         internal
439:         view
440:         returns (
441:             OfferInfo memory offerInfo,
442:             MakerInfo memory makerInfo,
443:             MarketPlaceInfo memory marketPlaceInfo,
444:             MarketPlaceStatus status
445:         )
446:     
```
['[20](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/MarketPlaceLibraries.sol#L20-L20)']
```solidity
20:     function getMarketPlaceStatus(
21:         uint256 _blockTimestamp,
22:         MarketPlaceInfo memory _marketPlaceInfo
23:     ) internal pure returns (MarketPlaceStatus _status) 
```
['[54](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/MarketPlaceLibraries.sol#L54-L54)']
```solidity
54:     function checkMarketPlaceStatus(
55:         MarketPlaceInfo memory _marketPlaceInfo,
56:         uint256 _blockTimestamp,
57:         MarketPlaceStatus _status
58:     ) internal pure 
```
['[27](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/OfferLibraries.sol#L27-L27)']
```solidity
27:     function getDepositAmount(
28:         OfferType _offerType,
29:         uint256 _collateralRate,
30:         uint256 _amount,
31:         bool _isMaker,
32:         Math.Rounding _rounding
33:     ) internal pure returns (uint256) 
```
['[63](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/OfferLibraries.sol#L63-L63)']
```solidity
63:     function getRefundAmount(
64:         OfferType _offerType,
65:         uint256 _amount,
66:         uint256 _points,
67:         uint256 _usedPoints,
68:         uint256 _collateralRate
69:     ) internal pure returns (uint256) 
```


</details>

## [NonCritical-8] Private and internal state variables should have a preceding _ in their name unless they are constants

### Resolution 
Add a preceding underscore to the state variable name, take care to refactor where there variables are read/wrote

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[21](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L21-L21)']
```solidity
21:     address internal guardian; // <= FOUND
```


</details>

## [NonCritical-9] Avoid updating storage when the value hasn't changed

### Resolution 
In Solidity, manipulating contract storage comes with significant gas costs. One can optimize gas usage by preventing unnecessary storage updates when the new value is the same as the existing one. If an existing value is the same as the new one, not reassigning it to the storage could potentially save substantial amounts of gas, notably 2900 gas for a 'Gsreset'. This saving may come at the expense of a cold storage load operation ('Gcoldsload'), which costs 2100 gas, or a warm storage access operation ('Gwarmaccess'), which costs 100 gas. Therefore, the gas efficiency of your contract can be significantly improved by adding a check that compares the new value with the current one before any storage update operation. If the values are the same, you can bypass the storage operation, thereby saving gas.

Num of instances: 4

### Findings 


<details><summary>Click to show findings</summary>

['[160](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L160-L160)']
```solidity
160:     function updateMarketPlaceStatus(
161:         string calldata _marketPlaceName,
162:         MarketPlaceStatus _status
163:     ) external onlyOwner {
164:         address marketPlace = GenerateAddress.generateMarketPlaceAddress(
165:             _marketPlaceName
166:         );
167:         MarketPlaceInfo storage marketPlaceInfo = marketPlaceInfoMap[
168:             marketPlace
169:         ];
170:         marketPlaceInfo.status = _status;
171:     }
```
['[179](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L179-L179)']
```solidity
179:     function updateUserPlatformFeeRate(
180:         address _accountAddress,
181:         uint256 _platformFeeRate
182:     ) external onlyOwner {
183:         require(
184:             _platformFeeRate <= Constants.PLATFORM_FEE_DECIMAL_SCALER,
185:             "Invalid platform fee rate"
186:         );
187:         userPlatformFeeRate[_accountAddress] = _platformFeeRate;
188: 
189:         emit UpdateUserPlatformFeeRate(_accountAddress, _platformFeeRate);
190:     }
```
['[199](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L199-L199)']
```solidity
199:     function updateReferralExtraRateMap(
200:         address _referrer,
201:         uint256 _extraRate
202:     ) external onlyOwner {
203:         uint256 totalRate = _extraRate + baseReferralRate;
204:         if (totalRate > Constants.REFERRAL_RATE_DECIMAL_SCALER) {
205:             revert InvalidTotalRate(totalRate);
206:         }
207:         referralExtraRateMap[_referrer] = _extraRate;
208:         emit UpdateReferralExtraRateMap(_referrer, _extraRate);
209:     }
```
['[197](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L197-L197)']
```solidity
197:     function updateTokenWhiteListed(
198:         address[] calldata _tokens,
199:         bool _isWhiteListed
200:     ) external onlyOwner {
201:         uint256 _tokensLength = _tokens.length;
202: 
203:         for (uint256 i = 0; i < _tokensLength; ) {
204:             _updateTokenWhiteListed(_tokens[i], _isWhiteListed);
205:             unchecked {
206:                 ++i;
207:             }
208:         }
209:     }
```


</details>

## [NonCritical-10] Specific imports should be used where possible so only used code is imported

### Resolution 
In many cases only some functionality is used from an import. In such cases it makes more sense to use {} to specify what to import and thus save gas whilst improving readability

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[4](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/OfferLibraries.sol#L4-L4)']
```solidity
4: import "@openzeppelin/contracts/utils/math/Math.sol";
```


</details>

## [NonCritical-11] Old Solidity version

### Resolution 
Using outdated Solidity versions can lead to security risks and inefficiencies. It's recommended to adopt newer versions, ideally the latest, which as of now is 0.8.24. This ensures access to the latest bug fixes, features, and optimizations, particularly crucial for Layer 2 deployments. Regular updates to versions like 0.8.19 or later, up to 0.8.24, enhance contract security and performance.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[2](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L2-L2)']
```solidity
2: pragma solidity ^0.8.13;
```


</details>

## [NonCritical-12] Contracts should have all public/external functions exposed by interfaces

### Resolution 
Contracts should expose all public and external functions through interfaces. This practice ensures a clear and consistent definition of how the contract can be interacted with, promoting better transparency and integration.

Num of instances: 36

### Findings 


<details><summary>Click to show findings</summary>

['[24](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L24-L24)']
```solidity
24:     function approve(address tokenAddr) external 
```
['[35](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L35-L35)']
```solidity
35:     function closeBidOffer(address _offer) external 
```
['[96](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L96-L96)']
```solidity
96:     function closeBidTaker(address _stock) external 
```
['[222](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L222-L222)']
```solidity
222:     function settleAskMaker(address _offer, uint256 _settledPoints) external 
```
['[335](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L335-L335)']
```solidity
335:     function settleAskTaker(address _stock, uint256 _settledPoints) external 
```
['[39](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L39-L39)']
```solidity
39:     function createOffer(CreateOfferParams calldata params) external payable 
```
['[164](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L164-L164)']
```solidity
164:     function createTaker(address _offer, uint256 _points) external payable 
```
['[295](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L295-L295)']
```solidity
295:     function listOffer(
296:         address _stock,
297:         uint256 _amount,
298:         uint256 _collateralRate
299:     ) external payable 
```
['[406](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L406-L406)']
```solidity
406:     function closeOffer(address _stock, address _offer) external 
```
['[470](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L470-L470)']
```solidity
470:     function relistOffer(address _stock, address _offer) external payable 
```
['[536](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L536-L536)']
```solidity
536:     function abortAskOffer(address _stock, address _offer) external 
```
['[645](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L645-L645)']
```solidity
645:     function abortBidTaker(address _stock, address _offer) external 
```
['[705](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L705-L705)']
```solidity
705:     function updateOfferStatus(
706:         address _offer,
707:         OfferStatus _status
708:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) 
```
['[721](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L721-L721)']
```solidity
721:     function updateStockStatus(
722:         address _stock,
723:         StockStatus _status
724:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) 
```
['[738](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L738-L738)']
```solidity
738:     function settledAskOffer(
739:         address _offer,
740:         uint256 _settledPoints,
741:         uint256 _settledPointTokenAmount
742:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) 
```
['[759](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L759-L759)']
```solidity
759:     function settleAskTaker(
760:         address _offer,
761:         address _stock,
762:         uint256 _settledPoints,
763:         uint256 _settledPointTokenAmount
764:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) 
```
['[787](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L787-L787)']
```solidity
787:     function getOfferInfo(
788:         address _offer
789:     ) external view returns (OfferInfo memory _offerInfo) 
```
['[797](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L797-L797)']
```solidity
797:     function getStockInfo(
798:         address _stock
799:     ) external view returns (StockInfo memory _stockInfo) 
```
['[807](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L807-L807)']
```solidity
807:     function getMakerInfo(
808:         address _maker
809:     ) external view returns (MakerInfo memory _makerInfo) 
```
['[25](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L25-L25)']
```solidity
25:     function initialize(
26:         uint256 _basePlatformFeeRate,
27:         uint256 _baseReferralRate
28:     ) external onlyOwner 
```
['[41](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L41-L41)']
```solidity
41:     function updateReferrerInfo(
42:         address _referrer,
43:         uint256 _referrerRate,
44:         uint256 _authorityRate
45:     ) external 
```
['[90](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L90-L90)']
```solidity
90:     function createMarketPlace(
91:         string calldata _marketPlaceName,
92:         bool _fixedratio
93:     ) external onlyOwner 
```
['[120](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L120-L120)']
```solidity
120:     function updateMarket(
121:         string calldata _marketPlaceName,
122:         address _tokenAddress,
123:         uint256 _tokenPerPoint,
124:         uint256 _tge,
125:         uint256 _settlementPeriod
126:     ) external onlyOwner 
```
['[160](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L160-L160)']
```solidity
160:     function updateMarketPlaceStatus(
161:         string calldata _marketPlaceName,
162:         MarketPlaceStatus _status
163:     ) external onlyOwner 
```
['[179](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L179-L179)']
```solidity
179:     function updateUserPlatformFeeRate(
180:         address _accountAddress,
181:         uint256 _platformFeeRate
182:     ) external onlyOwner 
```
['[199](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L199-L199)']
```solidity
199:     function updateReferralExtraRateMap(
200:         address _referrer,
201:         uint256 _extraRate
202:     ) external onlyOwner 
```
['[212](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L212-L212)']
```solidity
212:     function getBaseReferralRate() external view returns (uint256) 
```
['[220](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L220-L220)']
```solidity
220:     function getPlatformFeeRate(address _user) external view returns (uint256) 
```
['[229](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L229-L229)']
```solidity
229:     function getReferralInfo(
230:         address _referrer
231:     ) external view returns (ReferralInfo memory) 
```
['[236](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L236-L236)']
```solidity
236:     function getMarketPlaceInfo(
237:         address _marketPlace
238:     ) external view returns (MarketPlaceInfo memory) 
```
['[43](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L43-L43)']
```solidity
43:     function initialize(address _wrappedNativeToken) external onlyOwner 
```
['[56](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L56-L56)']
```solidity
56:     function tillIn(
57:         address _accountAddress,
58:         address _tokenAddress,
59:         uint256 _amount,
60:         bool _isPointToken
61:     )
62:         external
63:         payable
64:         onlyRelatedContracts(tadleFactory, _msgSender())
65:         onlyInTokenWhiteList(_isPointToken, _tokenAddress)
66:     
```
['[113](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L113-L113)']
```solidity
113:     function addTokenBalance(
114:         TokenBalanceType _tokenBalanceType,
115:         address _accountAddress,
116:         address _tokenAddress,
117:         uint256 _amount
118:     ) external onlyRelatedContracts(tadleFactory, _msgSender()) 
```
['[137](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L137-L137)']
```solidity
137:     function withdraw(
138:         address _tokenAddress,
139:         TokenBalanceType _tokenBalanceType
140:     ) external whenNotPaused 
```
['[197](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L197-L197)']
```solidity
197:     function updateTokenWhiteListed(
198:         address[] calldata _tokens,
199:         bool _isWhiteListed
200:     ) external onlyOwner 
```
['[51](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L51-L51)']
```solidity
51:     function deployUpgradeableProxy(
52:         uint8 _relatedContractIndex,
53:         address _logic,
54:         bytes memory _data
55:     ) external onlyGuardian returns (address) 
```


</details>

## [NonCritical-13] A function which defines named returns in it's declaration doesn't need to use return

### Resolution 
Refacter the code to assign to the named return variables rather than using a return statement

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[20](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/MarketPlaceLibraries.sol#L20-L44)']
```solidity
20:     function getMarketPlaceStatus(
21:         uint256 _blockTimestamp,
22:         MarketPlaceInfo memory _marketPlaceInfo
23:     ) internal pure returns (MarketPlaceStatus _status) {
24:         if (_marketPlaceInfo.status == MarketPlaceStatus.Offline) {
25:             return MarketPlaceStatus.Offline; // <= FOUND
26:         }
27: 
28:         
29:         if (_marketPlaceInfo.tge == 0) {
30:             return _marketPlaceInfo.status; // <= FOUND
31:         }
32: 
33:         if (
34:             _blockTimestamp >
35:             _marketPlaceInfo.tge + _marketPlaceInfo.settlementPeriod
36:         ) {
37:             return MarketPlaceStatus.BidSettling; // <= FOUND
38:         }
39: 
40:         if (_blockTimestamp > _marketPlaceInfo.tge) {
41:             return MarketPlaceStatus.AskSettling; // <= FOUND
42:         }
43: 
44:         return _marketPlaceInfo.status; // <= FOUND
45:     }
```


</details>

## [NonCritical-14] Constants should be on the left side of the comparison

### Resolution 
Putting constants on the left side of a comparison operator like `==` or `<` is a best practice known as "Yoda conditions", which can help prevent accidental assignment instead of comparison. In some programming languages, if a variable is mistakenly put on the left with a single `=` instead of `==`, it assigns the constant's value to the variable without any compiler error. However, doing this with the constant on the left would generate an error, as constants cannot be assigned values. Although Solidity's static typing system prevents accidental assignments within conditionals, adopting this practice enhances code readability and consistency, especially when developers are working across multiple languages that support this convention.

Num of instances: 12

### Findings 


<details><summary>Click to show findings</summary>

['[139](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L139-L139)']
```solidity
139:         if (userRemainingPoints == 0)  // <= FOUND
```
['[45](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L45-L45)']
```solidity
45:         if (params.points == 0x0 || params.amount == 0x0)  // <= FOUND
```
['[170](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L170-L170)']
```solidity
170:         if (_points == 0x0)  // <= FOUND
```
['[300](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L300-L300)']
```solidity
300:        if (_amount == 0x0)  // <= FOUND
```
['[221](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L221-L221)']
```solidity
221:        if (userPlatformFeeRate[_user] == 0)  // <= FOUND
```
['[68](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L68-L68)']
```solidity
68:         if (_amount == 0)  // <= FOUND
```
['[145](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L145-L145)']
```solidity
145:         if (claimAbleAmount == 0)  // <= FOUND
```
['[243](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L243-L245)']
```solidity
243:         if (
244:             _from == _capitalPoolAddr &&
245:             IERC20(_token).allowance(_from, address(this)) == 0x0 // <= FOUND
246:         ) 
```
['[29](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/MarketPlaceLibraries.sol#L29-L29)']
```solidity
29:         if (_marketPlaceInfo.tge == 0)  // <= FOUND
```
['[266](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L266-L266)']
```solidity
266:         if (settledPointTokenAmount > 0)  // <= FOUND
```
['[266](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L266-L266)']
```solidity
266:         if (settledPointTokenAmount > 0)  // <= FOUND
```
['[257](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L257-L257)']
```solidity
257:             if (_settledPoints > 0)  // <= FOUND
```


</details>

## [NonCritical-15] Defined named returns not used within function 

### Resolution 
Such instances can be replaced with unnamed returns

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[20](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/MarketPlaceLibraries.sol#L20-L23)']
```solidity
20:     function getMarketPlaceStatus( // <= FOUND
21:         uint256 _blockTimestamp,
22:         MarketPlaceInfo memory _marketPlaceInfo
23:     ) internal pure returns (MarketPlaceStatus _status) { // <= FOUND
24:         if (_marketPlaceInfo.status == MarketPlaceStatus.Offline) {
25:             return MarketPlaceStatus.Offline;
26:         }
27: 
28:         
29:         if (_marketPlaceInfo.tge == 0) {
30:             return _marketPlaceInfo.status;
31:         }
32: 
33:         if (
34:             _blockTimestamp >
35:             _marketPlaceInfo.tge + _marketPlaceInfo.settlementPeriod
36:         ) {
37:             return MarketPlaceStatus.BidSettling;
38:         }
39: 
40:         if (_blockTimestamp > _marketPlaceInfo.tge) {
41:             return MarketPlaceStatus.AskSettling;
42:         }
43: 
44:         return _marketPlaceInfo.status;
45:     }
```


</details>

## [NonCritical-16] Initialize functions do not emit an event

### Resolution 
Emitting an event within initializer functions in Solidity is a best practice for providing transparency and traceability. Initializer functions set the initial state and values of an upgradeable contract. Emitting an event during initialization allows anyone to verify and audit the initial state of the contract via the transaction logs. This can be particularly useful for verifying the parameters set during initialization, tracking the contract's deployment, and troubleshooting or debugging. Therefore, developers should include an event emission in their initializer functions, providing a clear record of the contract's initialization and enhancing the contract's transparency and security.

Num of instances: 2

### Findings 


<details><summary>Click to show findings</summary>

['[25](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L25-L25)']
```solidity
25:     function initialize( // <= FOUND
26:         uint256 _basePlatformFeeRate,
27:         uint256 _baseReferralRate
28:     ) external onlyOwner {
29:         basePlatformFeeRate = _basePlatformFeeRate;
30:         baseReferralRate = _baseReferralRate;
31:     }
```
['[43](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L43-L43)']
```solidity
43:     function initialize(address _wrappedNativeToken) external onlyOwner { // <= FOUND
44:         wrappedNativeToken = _wrappedNativeToken;
45:     }
```


</details>

## [NonCritical-17] Empty bytes check is missing

### Resolution 
When developing smart contracts in Solidity, it's crucial to validate the inputs of your functions. This includes ensuring that the bytes parameters are not empty, especially when they represent crucial data such as addresses, identifiers, or raw data that the contract needs to process.

Missing empty bytes checks can lead to unexpected behaviour in your contract. For instance, certain operations might fail, produce incorrect results, or consume unnecessary gas when performed with empty bytes. Moreover, missing input validation can potentially expose your contract to malicious activity, including exploitation of unhandled edge cases.

To mitigate these issues, always validate that bytes parameters are not empty when the logic of your contract requires it.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[51](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L51-L51)']
```solidity
51:     function deployUpgradeableProxy(
52:         uint8 _relatedContractIndex,
53:         address _logic,
54:         bytes memory _data
55:     ) external onlyGuardian returns (address) {
56:         
57:         if (!_logic.isContract()) {
58:             revert LogicAddrIsNotContract(_logic);
59:         }
60: 
61:         
62:         UpgradeableProxy _proxy = new UpgradeableProxy(
63:             _logic,
64:             guardian,
65:             address(this),
66:             _data
67:         );
68:         relatedContracts[_relatedContractIndex] = address(_proxy);
69:         emit RelatedContractDeployed(_relatedContractIndex, address(_proxy));
70:         return address(_proxy);
71:     }
```


</details>

## [NonCritical-18] Whitespace in expressions

### Resolution 
Avoid unnecessary whitespace in contract lines such as ' ;' and ', )' 

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[28](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L28-L28)']
```solidity
28:         (bool success, ) = tokenAddr.call( // <= FOUND
29:             abi.encodeWithSelector(
30:                 APPROVE_SELECTOR,
31:                 tokenManager,
32:                 type(uint256).max
33:             )
34:         );
```


</details>

## [NonCritical-19] call bypasses function existence check, type checking and argument packing

### Resolution 
Using the `.call` method in Solidity enables direct communication with an address, bypassing function existence checks, type checking, and argument packing. While this can save gas and provide flexibility, it can also introduce security risks and potential errors. The absence of these checks can lead to unexpected behavior if the callee contract's interface changes or if the input parameters are not crafted with care. The resolution to these issues is to use Solidity's high-level interface for calling functions when possible, as it automatically manages these aspects. If using `.call` is necessary, ensure that the inputs are carefully validated and that awareness of the called contract's behavior is maintained.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[28](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L28-L28)']
```solidity
28:         (bool success, ) = tokenAddr.call( // <= FOUND
29:             abi.encodeWithSelector(
30:                 APPROVE_SELECTOR,
31:                 tokenManager,
32:                 type(uint256).max
33:             )
34:         );
```


</details>

## [NonCritical-20] Cyclomatic complexity in functions

### Resolution 
Cyclomatic complexity is a software metric used to measure the complexity of a program. It quantifies the number of linearly independent paths through a program's source code, giving an idea of how complex the control flow is. High cyclomatic complexity may indicate a higher risk of defects and can make the code harder to understand, test, and maintain. It often suggests that a function or method is trying to do too much, and a refactor might be needed. By breaking down complex functions into smaller, more focused pieces, you can improve readability, ease of testing, and overall maintainability.

Num of instances: 14

### Findings 


<details><summary>Click to show findings</summary>

['[35](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L35-L35)']
```solidity
35:     function closeBidOffer(address _offer) external { // <= FOUND
36:         (
37:             OfferInfo memory offerInfo,
38:             MakerInfo memory makerInfo,
39:             ,
40:             MarketPlaceStatus status
41:         ) = getOfferInfo(_offer);
42: 
43:         if (_msgSender() != offerInfo.authority) {
44:             revert Errors.Unauthorized();
45:         }
46: 
47:         if (offerInfo.offerType == OfferType.Ask) {
48:             revert InvalidOfferType(OfferType.Bid, OfferType.Ask);
49:         }
50: 
51:         if (
52:             status != MarketPlaceStatus.AskSettling &&
53:             status != MarketPlaceStatus.BidSettling
54:         ) {
55:             revert InvaildMarketPlaceStatus();
56:         }
57: 
58:         if (offerInfo.offerStatus != OfferStatus.Virgin) {
59:             revert InvalidOfferStatus();
60:         }
61: 
62:         uint256 refundAmount = OfferLibraries.getRefundAmount(
63:             offerInfo.offerType,
64:             offerInfo.amount,
65:             offerInfo.points,
66:             offerInfo.usedPoints,
67:             offerInfo.collateralRate
68:         );
69: 
70:         ITokenManager tokenManager = tadleFactory.getTokenManager();
71:         tokenManager.addTokenBalance(
72:             TokenBalanceType.MakerRefund,
73:             _msgSender(),
74:             makerInfo.tokenAddress,
75:             refundAmount
76:         );
77: 
78:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
79:         perMarkets.updateOfferStatus(_offer, OfferStatus.Settled);
80: 
81:         emit CloseBidOffer(
82:             makerInfo.marketPlace,
83:             offerInfo.maker,
84:             _offer,
85:             _msgSender()
86:         );
87:     }
```
['[96](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L96-L96)']
```solidity
96:     function closeBidTaker(address _stock) external { // <= FOUND
97:         IPerMarkets perMar
```
['[222](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L222-L222)']
```solidity
222:     function settleAskMaker(address _offer, uint256 _settledPoints) external { // <= FOUND
223:
```
['[335](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L335-L335)']
```solidity
335:     function settleAskTaker(address _stock, uint256 _settledPoints) external { // <= FOUND
336:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
337:         StockInfo memory stockInfo = perMarkets.getStockInfo(_stock);
338: 
339:         (
340:             OfferInfo memory offerInfo,
341:             MakerInfo memory makerInfo,
342:             MarketPlaceInfo memory marketPlaceInfo,
343:             MarketPlaceStatus status
344:         ) = getOfferInfo(stockInfo.preOffer);
345: 
346:         if (stockInfo.stockStatus != StockStatus.Initialized) {
347:             revert InvalidStockStatus();
348:         }
349: 
350:         if (marketPlaceInfo.fixedratio) {
351:             revert FixedRatioUnsupported();
352:         }
353:         if (stockInfo.stockType == StockType.Bid) {
354:             revert InvalidStockType();
355:         }
356:         if (_settledPoints > stockInfo.points) {
357:             revert InvalidPoints();
358:         }
359: 
360:         if (status == MarketPlaceStatus.AskSettling) {
361:             if (_msgSender() != offerInfo.authority) {
362:                 revert Errors.Unauthorized();
363:             }
364:         } else {
365:             if (_msgSender() != owner()) {
366:                 revert Errors.Unauthorized();
367:             }
368:             if (_settledPoints > 0) {
369:                 revert InvalidPoints();
370:             }
371:         }
372: 
373:         uint256 settledPointTokenAmount = marketPlaceInfo.tokenPerPoint *
374:             _settledPoints;
375:         ITokenManager tokenManager = tadleFactory.getTokenManager();
376:         if (settledPointTokenAmount > 0) {
377:             tokenManager.tillIn(
378:                 _msgSender(),
379:                 marketPlaceInfo.tokenAddress,
380:                 settledPointTokenAmount,
381:                 true
382:             );
383: 
384:             tokenManager.addTokenBalance(
385:                 TokenBalanceType.PointToken,
386:                 offerInfo.authority,
387:                 makerInfo.tokenAddress,
388:                 settledPointTokenAmount
389:             );
390:         }
391: 
392:         uint256 collateralFee = OfferLibraries.getDepositAmount(
393:             offerInfo.offerType,
394:             offerInfo.collateralRate,
395:             stockInfo.amount,
396:             false,
397:             Math.Rounding.Floor
398:         );
399: 
400:         if (_settledPoints == stockInfo.points) {
401:             tokenManager.addTokenBalance(
402:                 TokenBalanceType.RemainingCash,
403:                 _msgSender(),
404:                 makerInfo.tokenAddress,
405:                 collateralFee
406:             );
407:         } else {
408:             tokenManager.addTokenBalance(
409:                 TokenBalanceType.MakerRefund,
410:                 offerInfo.authority,
411:                 makerInfo.tokenAddress,
412:                 collateralFee
413:             );
414:         }
415: 
416:         perMarkets.settleAskTaker(
417:             stockInfo.preOffer,
418:             _stock,
419:             _settledPoints,
420:             settledPointTokenAmount
421:         );
422: 
423:         emit SettleAskTaker(
424:             makerInfo.marketPlace,
425:             offerInfo.maker,
426:             _stock,
427:             stockInfo.preOffer,
428:             _msgSender(),
429:             _settledPoints,
430:             settledPointTokenAmount,
431:             collateralFee
432:         );
433:     }
```
['[39](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L39-L39)']
```solidity
39:     function createOffer(CreateOfferParams calldata params) external payable { // <= FOUND
40:  
```
['[164](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L164-L164)']
```solidity
164:     function createTaker(address _offer, uint256 _points) external payable { // <= FOUND
165:  
```
['[295](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L295-L295)']
```solidity
295:     function listOffer(
296:         address _stock,
297:         uint256 _amount,
298:         uint256 _collateralRate
299:     ) external payable {
300:         if (_amount == 0x0) {
301:             revert Errors.AmountIsZero();
302:         }
303: 
304:         if (_collateralRate < Constants.COLLATERAL_RATE_DECIMAL_SCALER) {
305:             revert InvalidCollateralRate();
306:         }
307: 
308:         StockInfo storage stockInfo = stockInfoMap[_stock];
309:         if (_msgSender() != stockInfo.authority) {
310:             revert Errors.Unauthorized();
311:         }
312: 
313:         OfferInfo storage offerInfo = offerInfoMap[stockInfo.preOffer];
314:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
315: 
316:         
317:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
318:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
319:             .getMarketPlaceInfo(makerInfo.marketPlace);
320: 
321:         marketPlaceInfo.checkMarketPlaceStatus(
322:             block.timestamp,
323:             MarketPlaceStatus.Online
324:         );
325: 
326:         if (stockInfo.offer != address(0x0)) {
327:             revert OfferAlreadyExist();
328:         }
329: 
330:         if (stockInfo.stockType != StockType.Bid) {
331:             revert InvalidStockType(StockType.Bid, stockInfo.stockType);
332:         }
333: 
334:         
335:         if (makerInfo.offerSettleType == OfferSettleType.Turbo) {
336:             address originOffer = makerInfo.originOffer;
337:             OfferInfo memory originOfferInfo = offerInfoMap[originOffer];
338: 
339:             if (_collateralRate != originOfferInfo.collateralRate) {
340:                 revert InvalidCollateralRate();
341:             }
342:             originOfferInfo.abortOfferStatus = AbortOfferStatus.SubOfferListed;
343:         }
344: 
345:         
346:         if (makerInfo.offerSettleType == OfferSettleType.Protected) {
347:             uint256 transferAmount = OfferLibraries.getDepositAmount(
348:                 offerInfo.offerType,
349:                 offerInfo.collateralRate,
350:                 _amount,
351:                 true,
352:                 Math.Rounding.Ceil
353:             );
354: 
355:             ITokenManager tokenManager = tadleFactory.getTokenManager();
356:             tokenManager.tillIn{value: msg.value}(
357:                 _msgSender(),
358:                 makerInfo.tokenAddress,
359:                 transferAmount,
360:                 false
361:             );
362:         }
363: 
364:         address offerAddr = GenerateAddress.generateOfferAddress(stockInfo.id);
365:         if (offerInfoMap[offerAddr].authority != address(0x0)) {
366:             revert OfferAlreadyExist();
367:         }
368: 
369:         
370:         offerInfoMap[offerAddr] = OfferInfo({
371:             id: stockInfo.id,
372:             authority: _msgSender(),
373:             maker: offerInfo.maker,
374:             offerStatus: OfferStatus.Virgin,
375:             offerType: offerInfo.offerType,
376:             abortOfferStatus: AbortOfferStatus.Initialized,
377:             points: stockInfo.points,
378:             amount: _amount,
379:             collateralRate: _collateralRate,
380:             usedPoints: 0,
381:             tradeTax: 0,
382:             settledPoints: 0,
383:             settledPointTokenAmount: 0,
384:             settledCollateralAmount: 0
385:         });
386: 
387:         stockInfo.offer = offerAddr;
388: 
389:         emit ListOffer(
390:             offerAddr,
391:             _stock,
392:             _msgSender(),
393:             stockInfo.points,
394:             _amount
395:         );
396:     }
```
['[406](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L406-L406)']
```solidity
406:     function closeOffer(address _stock, address _offer) external { // <= FOUND
407:         OfferInfo storage offerInfo = offerInfoMap[_offer];
408:         StockInfo storage stockInfo = stockInfoMap[_stock];
409: 
410:         if (stockInfo.offer != _offer) {
411:             revert InvalidOfferAccount(stockInfo.offer, _offer);
412:         }
413: 
414:         if (offerInfo.authority != _msgSender()) {
415:             revert Errors.Unauthorized();
416:         }
417: 
418:         if (offerInfo.offerStatus != OfferStatus.Virgin) {
419:             revert InvalidOfferStatus();
420:         }
421: 
422:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
423:         
424:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
425:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
426:             .getMarketPlaceInfo(makerInfo.marketPlace);
427: 
428:         marketPlaceInfo.checkMarketPlaceStatus(
429:             block.timestamp,
430:             MarketPlaceStatus.Online
431:         );
432: 
433:         
434: 
437:         if (
438:             makerInfo.offerSettleType == OfferSettleType.Protected ||
439:             stockInfo.preOffer == address(0x0)
440:         ) {
441:             uint256 refundAmount = OfferLibraries.getRefundAmount(
442:                 offerInfo.offerType,
443:                 offerInfo.amount,
444:                 offerInfo.points,
445:                 offerInfo.usedPoints,
446:                 offerInfo.collateralRate
447:             );
448: 
449:             ITokenManager tokenManager = tadleFactory.getTokenManager();
450:             tokenManager.addTokenBalance(
451:                 TokenBalanceType.MakerRefund,
452:                 _msgSender(),
453:                 makerInfo.tokenAddress,
454:                 refundAmount
455:             );
456:         }
457: 
458:         offerInfo.offerStatus = OfferStatus.Canceled;
459:         emit CloseOffer(_offer, _msgSender());
460:     }
```
['[470](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L470-L470)']
```solidity
470:     function relistOffer(address _stock, address _offer) external payable { // <= FOUND
471:         OfferInfo storage offerInfo = offerInfoMap[_offer];
472:         StockInfo storage stockInfo = stockInfoMap[_stock];
473: 
474:         if (stockInfo.offer != _offer) {
475:             revert InvalidOfferAccount(stockInfo.offer, _offer);
476:         }
477: 
478:         if (offerInfo.authority != _msgSender()) {
479:             revert Errors.Unauthorized();
480:         }
481: 
482:         if (offerInfo.offerStatus != OfferStatus.Canceled) {
483:             revert InvalidOfferStatus();
484:         }
485: 
486:         
487:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
488: 
489:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
490:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
491:             .getMarketPlaceInfo(makerInfo.marketPlace);
492: 
493:         marketPlaceInfo.checkMarketPlaceStatus(
494:             block.timestamp,
495:             MarketPlaceStatus.Online
496:         );
497: 
498:         
499: 
502:         if (
503:             makerInfo.offerSettleType == OfferSettleType.Protected ||
504:             stockInfo.preOffer == address(0x0)
505:         ) {
506:             uint256 depositAmount = OfferLibraries.getRefundAmount(
507:                 offerInfo.offerType,
508:                 offerInfo.amount,
509:                 offerInfo.points,
510:                 offerInfo.usedPoints,
511:                 offerInfo.collateralRate
512:             );
513: 
514:             ITokenManager tokenManager = tadleFactory.getTokenManager();
515:             tokenManager.tillIn{value: msg.value}(
516:                 _msgSender(),
517:                 makerInfo.tokenAddress,
518:                 depositAmount,
519:                 false
520:             );
521:         }
522: 
523:         
524:         offerInfo.offerStatus = OfferStatus.Virgin;
525:         emit RelistOffer(_offer, _msgSender());
526:     }
```
['[536](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L536-L536)']
```solidity
536:     function abortAskOffer(address _stock, address _offer) external { // <= FOUND
537:         StockInfo storage stockInfo = stockInfoMap[_stock];
538:         OfferInfo storage offerInfo = offerInfoMap[_offer];
539: 
540:         if (offerInfo.authority != _msgSender()) {
541:             revert Errors.Unauthorized();
542:         }
543: 
544:         if (stockInfo.offer != _offer) {
545:             revert InvalidOfferAccount(stockInfo.offer, _offer);
546:         }
547: 
548:         if (offerInfo.offerType != OfferType.Ask) {
549:             revert InvalidOfferType(OfferType.Ask, offerInfo.offerType);
550:         }
551: 
552:         if (offerInfo.abortOfferStatus != AbortOfferStatus.Initialized) {
553:             revert InvalidAbortOfferStatus(
554:                 AbortOfferStatus.Initialized,
555:                 offerInfo.abortOfferStatus
556:             );
557:         }
558: 
559:         if (
560:             offerInfo.offerStatus != OfferStatus.Virgin &&
561:             offerInfo.offerStatus != OfferStatus.Canceled
562:         ) {
563:             revert InvalidOfferStatus();
564:         }
565: 
566:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
567: 
568:         if (
569:             makerInfo.offerSettleType == OfferSettleType.Turbo &&
570:             stockInfo.preOffer != address(0x0)
571:         ) {
572:             revert InvalidOffer();
573:         }
574: 
575:         
576:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
577:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
578:             .getMarketPlaceInfo(makerInfo.marketPlace);
579:         marketPlaceInfo.checkMarketPlaceStatus(
580:             block.timestamp,
581:             MarketPlaceStatus.Online
582:         );
583: 
584:         uint256 remainingAmount;
585:         if (offerInfo.offerStatus == OfferStatus.Virgin) {
586:             remainingAmount = offerInfo.amount;
587:         } else {
588:             remainingAmount = offerInfo.amount.mulDiv(
589:                 offerInfo.usedPoints,
590:                 offerInfo.points,
591:                 Math.Rounding.Floor
592:             );
593:         }
594: 
595:         uint256 transferAmount = OfferLibraries.getDepositAmount(
596:             offerInfo.offerType,
597:             offerInfo.collateralRate,
598:             remainingAmount,
599:             true,
600:             Math.Rounding.Floor
601:         );
602:         uint256 totalUsedAmount = offerInfo.amount.mulDiv(
603:             offerInfo.usedPoints,
604:             offerInfo.points,
605:             Math.Rounding.Ceil
606:         );
607:         uint256 totalDepositAmount = OfferLibraries.getDepositAmount(
608:             offerInfo.offerType,
609:             offerInfo.collateralRate,
610:             totalUsedAmount,
611:             false,
612:             Math.Rounding.Ceil
613:         );
614: 
615:         
616:         uint256 makerRefundAmount;
617:         if (transferAmount > totalDepositAmount) {
618:             makerRefundAmount = transferAmount - totalDepositAmount;
619:         } else {
620:             makerRefundAmount = 0;
621:         }
622: 
623:         ITokenManager tokenManager = tadleFactory.getTokenManager();
624:         tokenManager.addTokenBalance(
625:             TokenBalanceType.MakerRefund,
626:             _msgSender(),
627:             makerInfo.tokenAddress,
628:             makerRefundAmount
629:         );
630: 
631:         offerInfo.abortOfferStatus = AbortOfferStatus.Aborted;
632:         offerInfo.offerStatus = OfferStatus.Settled;
633: 
634:         emit AbortAskOffer(_offer, _msgSender());
635:     }
```
['[645](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L645-L645)']
```solidity
645:     function abortBidTaker(address _stock, address _offer) external { // <= FOUND
646:         StockInfo storage stockInfo = stockInfoMap[_stock];
647:         OfferInfo storage preOfferInfo = offerInfoMap[_offer];
648: 
649:         if (stockInfo.authority != _msgSender()) {
650:             revert Errors.Unauthorized();
651:         }
652: 
653:         if (stockInfo.preOffer != _offer) {
654:             revert InvalidOfferAccount(stockInfo.preOffer, _offer);
655:         }
656: 
657:         if (stockInfo.stockStatus != StockStatus.Initialized) {
658:             revert InvalidStockStatus(
659:                 StockStatus.Initialized,
660:                 stockInfo.stockStatus
661:             );
662:         }
663: 
664:         if (preOfferInfo.abortOfferStatus != AbortOfferStatus.Aborted) {
665:             revert InvalidAbortOfferStatus(
666:                 AbortOfferStatus.Aborted,
667:                 preOfferInfo.abortOfferStatus
668:             );
669:         }
670: 
671:         uint256 depositAmount = stockInfo.points.mulDiv(
672:             preOfferInfo.points,
673:             preOfferInfo.amount,
674:             Math.Rounding.Floor
675:         );
676: 
677:         uint256 transferAmount = OfferLibraries.getDepositAmount(
678:             preOfferInfo.offerType,
679:             preOfferInfo.collateralRate,
680:             depositAmount,
681:             false,
682:             Math.Rounding.Floor
683:         );
684: 
685:         MakerInfo storage makerInfo = makerInfoMap[preOfferInfo.maker];
686:         ITokenManager tokenManager = tadleFactory.getTokenManager();
687:         tokenManager.addTokenBalance(
688:             TokenBalanceType.MakerRefund,
689:             _msgSender(),
690:             makerInfo.tokenAddress,
691:             transferAmount
692:         );
693: 
694:         stockInfo.stockStatus = StockStatus.Finished;
695: 
696:         emit AbortBidTaker(_offer, _msgSender());
697:     }
```
['[41](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L41-L41)']
```solidity
41:     function updateReferrerInfo(
42:         address _referrer,
43:         uint256 _referrerRate,
44:         uint256 _authorityRate
45:     ) external {
46:         if (_msgSender() == _referrer) {
47:             revert InvalidReferrer(_referrer);
48:         }
49: 
50:         if (_referrer == address(0x0)) {
51:             revert Errors.ZeroAddress();
52:         }
53: 
54:         if (_referrerRate < baseReferralRate) {
55:             revert InvalidReferrerRate(_referrerRate);
56:         }
57: 
58:         uint256 referralExtraRate = referralExtraRateMap[_referrer];
59:         uint256 totalRate = baseReferralRate + referralExtraRate;
60: 
61:         if (totalRate > Constants.REFERRAL_RATE_DECIMAL_SCALER) {
62:             revert InvalidTotalRate(totalRate);
63:         }
64: 
65:         if (_referrerRate + _authorityRate != totalRate) {
66:             revert InvalidRate(_referrerRate, _authorityRate, totalRate);
67:         }
68: 
69:         ReferralInfo storage referralInfo = referralInfoMap[_referrer];
70:         referralInfo.referrer = _referrer;
71:         referralInfo.referrerRate = _referrerRate;
72:         referralInfo.authorityRate = _authorityRate;
73: 
74:         emit UpdateReferrerInfo(
75:             msg.sender,
76:             _referrer,
77:             _referrerRate,
78:             _authorityRate
79:         );
80:     }
```
['[56](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L56-L56)']
```solidity
56:     function tillIn(
57:         address _accountAddress,
58:         address _tokenAddress,
59:         uint256 _amount,
60:         bool _isPointToken
61:     )
62:         external
63:         payable
64:         onlyRelatedContracts(tadleFactory, _msgSender())
65:         onlyInTokenWhiteList(_isPointToken, _tokenAddress)
66:     {
67:         
68:         if (_amount == 0) {
69:             return;
70:         }
71: 
72:         address capitalPoolAddr = tadleFactory.relatedContracts(
73:             RelatedContractLibraries.CAPITAL_POOL
74:         );
75:         if (capitalPoolAddr == address(0x0)) {
76:             revert Errors.ContractIsNotDeployed();
77:         }
78: 
79:         if (_tokenAddress == wrappedNativeToken) {
80:             
81: 
86:             if (msg.value < _amount) {
87:                 revert Errors.NotEnoughMsgValue(msg.value, _amount);
88:             }
89:             IWrappedNativeToken(wrappedNativeToken).deposit{value: _amount}();
90:             _safe_transfer(wrappedNativeToken, capitalPoolAddr, _amount);
91:         } else {
92:             
93:             _transfer(
94:                 _tokenAddress,
95:                 _accountAddress,
96:                 capitalPoolAddr,
97:                 _amount,
98:                 capitalPoolAddr
99:             );
100:         }
101: 
102:         emit TillIn(_accountAddress, _tokenAddress, _amount, _isPointToken);
103:     }
```
['[20](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/MarketPlaceLibraries.sol#L20-L20)']
```solidity
20:     function getMarketPlaceStatus(
21:         uint256 _blockTimestamp,
22:         MarketPlaceInfo memory _marketPlaceInfo
23:     ) internal pure returns (MarketPlaceStatus _status) {
24:         if (_marketPlaceInfo.status == MarketPlaceStatus.Offline) {
25:             return MarketPlaceStatus.Offline;
26:         }
27: 
28:         
29:         if (_marketPlaceInfo.tge == 0) {
30:             return _marketPlaceInfo.status;
31:         }
32: 
33:         if (
34:             _blockTimestamp >
35:             _marketPlaceInfo.tge + _marketPlaceInfo.settlementPeriod
36:         ) {
37:             return MarketPlaceStatus.BidSettling;
38:         }
39: 
40:         if (_blockTimestamp > _marketPlaceInfo.tge) {
41:             return MarketPlaceStatus.AskSettling;
42:         }
43: 
44:         return _marketPlaceInfo.status;
45:     }
```


</details>

## [NonCritical-21] Unused import

### Resolution 
If these serve no purpose, they should be safely removed

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[6](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L6-L6)']
```solidity
6: import {ProxyAdmin} from "@openzeppelin/contracts/proxy/transparent/ProxyAdmin.sol"; // <= FOUND
```


</details>

## [NonCritical-22] Missing events in sensitive functions

### Resolution 
Sensitive setter functions in smart contracts often alter critical state variables. Without events emitted in these functions, external observers or dApps cannot easily track or react to these state changes. Missing events can obscure contract activity, hampering transparency and making integration more challenging. To resolve this, incorporate appropriate event emissions within these functions. Events offer an efficient way to log crucial changes, aiding in real-time tracking and post-transaction verification.

Num of instances: 3

### Findings 


<details><summary>Click to show findings</summary>

['[160](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L160-L160)']
```solidity
160:     function updateMarketPlaceStatus( // <= FOUND
161:         string calldata _marketPlaceName,
162:         MarketPlaceStatus _status
163:     ) external onlyOwner {
164:         address marketPlace = GenerateAddress.generateMarketPlaceAddress(
165:             _marketPlaceName
166:         );
167:         MarketPlaceInfo storage marketPlaceInfo = marketPlaceInfoMap[
168:             marketPlace
169:         ];
170:         marketPlaceInfo.status = _status;
171:     }
```
['[197](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L197-L197)']
```solidity
197:     function updateTokenWhiteListed( // <= FOUND
198:         address[] calldata _tokens,
199:         bool _isWhiteListed
200:     ) external onlyOwner {
201:         uint256 _tokensLength = _tokens.length;
202: 
203:         for (uint256 i = 0; i < _tokensLength; ) {
204:             _updateTokenWhiteListed(_tokens[i], _isWhiteListed);
205:             unchecked {
206:                 ++i;
207:             }
208:         }
209:     }
```
['[906](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L906-L906)']
```solidity
906:     function _updateTokenBalanceWhenCreateTaker( // <= FOUND
907:         address _offer,
908:         uint256 _tradeTax,
909:         uint256 _depositAmount,
910:         OfferInfo storage offerInfo,
911:         MakerInfo storage makerInfo,
912:         ITokenManager tokenManager
913:     ) internal {
914:         if (
915:             _offer == makerInfo.originOffer ||
916:             makerInfo.offerSettleType == OfferSettleType.Protected
917:         ) {
918:             tokenManager.addTokenBalance(
919:                 TokenBalanceType.TaxIncome,
920:                 offerInfo.authority,
921:                 makerInfo.tokenAddress,
922:                 _tradeTax
923:             );
924:         } else {
925:             tokenManager.addTokenBalance(
926:                 TokenBalanceType.TaxIncome,
927:                 makerInfo.authority,
928:                 makerInfo.tokenAddress,
929:                 _tradeTax
930:             );
931:         }
932: 
933:         
934:         if (offerInfo.offerType == OfferType.Ask) {
935:             tokenManager.addTokenBalance(
936:                 TokenBalanceType.SalesRevenue,
937:                 offerInfo.authority,
938:                 makerInfo.tokenAddress,
939:                 _depositAmount
940:             );
941:         } else {
942:             tokenManager.addTokenBalance(
943:                 TokenBalanceType.SalesRevenue,
944:                 _msgSender(),
945:                 makerInfo.tokenAddress,
946:                 _depositAmount
947:             );
948:         }
949:     }
```


</details>

## [NonCritical-23] Contracts with only unimplemented functions can be labeled as abstract

### Resolution 
In Solidity, a contract that's not meant to be deployed on its own but is intended to be inherited by other contracts should be marked `abstract`. This ensures that developers recognize the contract's incomplete or intended-to-be-extended nature. If a contract has unimplemented functions or is designed with the intention that another contract should extend its functionality, it should be explicitly labeled as `abstract`. This helps prevent inadvertent deployments and clearly communicates the contract's purpose to other developers. Resolution: Review the contract, and if it's not supposed to function standalone, mark it as `abstract` to make the intention clear.

Num of instances: 5

### Findings 


<details><summary>Click to show findings</summary>

['[12](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/CapitalPoolStorage.sol#L12-L12)']
```solidity
12: contract CapitalPoolStorage is UpgradeableStorage 
```
['[12](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/DeliveryPlaceStorage.sol#L12-L12)']
```solidity
12: contract DeliveryPlaceStorage is UpgradeableStorage 
```
['[15](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/PerMarketsStorage.sol#L15-L15)']
```solidity
15: contract PerMarketsStorage is UpgradeableStorage 
```
['[15](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/SystemConfigStorage.sol#L15-L15)']
```solidity
15: contract SystemConfigStorage is UpgradeableStorage 
```
['[13](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/TokenManagerStorage.sol#L13-L13)']
```solidity
13: contract TokenManagerStorage is UpgradeableStorage 
```


</details>

## [NonCritical-24] A event should be emitted if a non immutable state variable is set in a constructor

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[40](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L40-L41)']
```solidity
40:     constructor(address _guardian) {
41:         guardian = _guardian; // <= FOUND
42:     }
```


</details>

## [NonCritical-25] Non constant/immutable state variables are missing a setter post deployment

### Resolution 
Non-constant or non-immutable state variables lacking a setter function can create inflexibility in contract operations. If there's no way to update these variables post-deployment, the contract might not adapt to changing conditions or requirements, which can be a significant drawback, especially in upgradable or long-lived contracts. To resolve this, implement setter functions guarded by appropriate access controls, like `onlyOwner` or similar modifiers, so that these variables can be updated as required while maintaining security. This enables smoother contract maintenance and feature upgrades.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[21](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L21-L21)']
```solidity
21:     address internal guardian;
```


</details>

## [NonCritical-26] Use 'using' keyword when using specific imports rather than calling the specific import directly

### Resolution 
In Solidity, the `using` keyword can streamline the use of library functions for specific types. Instead of calling library functions directly with their full import paths, you can declare a library once with `using` for a specific type. This approach makes your code more readable and concise. For example, instead of `LibraryName.functionName(variable)`, you would first declare `using LibraryName for TypeName;` at the contract level. After this, you can call library functions directly on variables of `TypeName` like `variable.functionName()`. This method not only enhances code clarity but also promotes cleaner and more organized code, especially when multiple functions from the same library are used frequently.

Num of instances: 17

### Findings 


<details><summary>Click to show findings</summary>

['[25](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L25-L26)']
```solidity
25:         address tokenManager = tadleFactory.relatedContracts(
26:             RelatedContractLibraries.TOKEN_MANAGER // <= FOUND 'RelatedContractLibraries.'
27:         );
```
['[72](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L72-L73)']
```solidity
72:         address capitalPoolAddr = tadleFactory.relatedContracts(
73:             RelatedContractLibraries.CAPITAL_POOL // <= FOUND 'RelatedContractLibraries.'
74:         );
```
['[456](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L456-L456)']
```solidity
456:         status = MarketPlaceLibraries.getMarketPlaceStatus( // <= FOUND 'MarketPlaceLibraries.'
457:             block.timestamp,
458:             marketPlaceInfo
459:         );
```
['[62](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L62-L62)']
```solidity
62:         uint256 refundAmount = OfferLibraries.getRefundAmount( // <= FOUND 'OfferLibraries.'
63:             offerInfo.offerType,
64:             offerInfo.amount,
65:             offerInfo.points,
66:             offerInfo.usedPoints,
67:             offerInfo.collateralRate
68:         );
```
['[154](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L154-L154)']
```solidity
154:                 collateralFee = OfferLibraries.getDepositAmount( // <= FOUND 'OfferLibraries.'
155:                     offerInfo.offerType,
156:                     offerInfo.collateralRate,
157:                     offerInfo.amount,
158:                     true,
159:                     Math.Rounding.Floor
160:                 );
```
['[168](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L168-L168)']
```solidity
168:                 collateralFee = OfferLibraries.getDepositAmount( // <= FOUND 'OfferLibraries.'
169:                     offerInfo.offerType,
170:                     offerInfo.collateralRate,
171:                     usedAmount,
172:                     true,
173:                     Math.Rounding.Floor
174:                 );
```
['[278](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L278-L278)']
```solidity
278:                 makerRefundAmount = OfferLibraries.getDepositAmount( // <= FOUND 'OfferLibraries.'
279:                     offerInfo.offerType,
280:                     offerInfo.collateralRate,
281:                     offerInfo.amount,
282:                     true,
283:                     Math.Rounding.Floor
284:                 );
```
['[292](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L292-L292)']
```solidity
292:                 makerRefundAmount = OfferLibraries.getDepositAmount( // <= FOUND 'OfferLibraries.'
293:                     offerInfo.offerType,
294:                     offerInfo.collateralRate,
295:                     usedAmount,
296:                     true,
297:                     Math.Rounding.Floor
298:                 );
```
['[392](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L392-L392)']
```solidity
392:         uint256 collateralFee = OfferLibraries.getDepositAmount( // <= FOUND 'OfferLibraries.'
393:             offerInfo.offerType,
394:             offerInfo.collateralRate,
395:             stockInfo.amount,
396:             false,
397:             Math.Rounding.Floor
398:         );
```
['[87](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L87-L88)']
```solidity
87:             
88:             uint256 transferAmount = OfferLibraries.getDepositAmount( // <= FOUND 'OfferLibraries.'
89:                 params.offerType,
90:                 params.collateralRate,
91:                 params.amount,
92:                 true,
93:                 Math.Rounding.Ceil
94:             );
```
['[347](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L347-L347)']
```solidity
347:             uint256 transferAmount = OfferLibraries.getDepositAmount( // <= FOUND 'OfferLibraries.'
348:                 offerInfo.offerType,
349:                 offerInfo.collateralRate,
350:                 _amount,
351:                 true,
352:                 Math.Rounding.Ceil
353:             );
```
['[441](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L441-L441)']
```solidity
441:             uint256 refundAmount = OfferLibraries.getRefundAmount( // <= FOUND 'OfferLibraries.'
442:                 offerInfo.offerType,
443:                 offerInfo.amount,
444:                 offerInfo.points,
445:                 offerInfo.usedPoints,
446:                 offerInfo.collateralRate
447:             );
```
['[506](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L506-L506)']
```solidity
506:             uint256 depositAmount = OfferLibraries.getRefundAmount( // <= FOUND 'OfferLibraries.'
507:                 offerInfo.offerType,
508:                 offerInfo.amount,
509:                 offerInfo.points,
510:                 offerInfo.usedPoints,
511:                 offerInfo.collateralRate
512:             );
```
['[595](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L595-L595)']
```solidity
595:         uint256 transferAmount = OfferLibraries.getDepositAmount( // <= FOUND 'OfferLibraries.'
596:             offerInfo.offerType,
597:             offerInfo.collateralRate,
598:             remainingAmount,
599:             true,
600:             Math.Rounding.Floor
601:         );
```
['[607](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L607-L607)']
```solidity
607:         uint256 totalDepositAmount = OfferLibraries.getDepositAmount( // <= FOUND 'OfferLibraries.'
608:             offerInfo.offerType,
609:             offerInfo.collateralRate,
610:             totalUsedAmount,
611:             false,
612:             Math.Rounding.Ceil
613:         );
```
['[677](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L677-L677)']
```solidity
677:         uint256 transferAmount = OfferLibraries.getDepositAmount( // <= FOUND 'OfferLibraries.'
678:             preOfferInfo.offerType,
679:             preOfferInfo.collateralRate,
680:             depositAmount,
681:             false,
682:             Math.Rounding.Floor
683:         );
```
['[821](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L821-L821)']
```solidity
821:         uint256 transferAmount = OfferLibraries.getDepositAmount( // <= FOUND 'OfferLibraries.'
822:             offerInfo.offerType,
823:             offerInfo.collateralRate,
824:             depositAmount,
825:             false,
826:             Math.Rounding.Ceil
827:         );
```


</details>

## [NonCritical-27] Constructors should emit an event

### Resolution 
Emitting an event in a constructor of a smart contract provides transparency and traceability in blockchain applications. This event logs the contract’s creation, aiding in monitoring and verifying contract deployment. Although constructors are executed only once, the emitted event ensures the contract's initialization is recorded on the blockchain.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[40](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L40-L40)']
```solidity
40:     constructor(address _guardian) { // <= FOUND
41:         guardian = _guardian;
42:     }
```


</details>

## [NonCritical-28] Contract and Abstract files should have a fixed compiler version

### Resolution 
Using a fixed compiler version in Solidity contract and abstract files ensures consistency and predictability in smart contract behavior. A fixed version prevents unforeseen issues arising from compiler updates, which might introduce breaking changes or new bugs. It guarantees that the contract's behavior remains stable and consistent with the version used during its development and testing.

Num of instances: 11

### Findings 


<details><summary>Click to show findings</summary>

['[13](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L13-L13)']
```solidity
13: contract CapitalPool is CapitalPoolStorage, Rescuable, ICapitalPool 
```
['[22](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L22-L22)']
```solidity
22: contract DeliveryPlace is DeliveryPlaceStorage, Rescuable, IDeliveryPlace 
```
['[27](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L27-L27)']
```solidity
27: contract PreMarktes is PerMarketsStorage, Rescuable, Related, IPerMarkets 
```
['[16](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L16-L16)']
```solidity
16: contract SystemConfig is SystemConfigStorage, Rescuable, ISystemConfig 
```
['[22](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L22-L22)']
```solidity
22: contract TokenManager is
23:     TokenManagerStorage,
24:     Rescuable,
25:     Related,
26:     ITokenManager
27: 
```
['[17](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L17-L17)']
```solidity
17: contract TadleFactory is Context, ITadleFactory 
```
['[12](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/CapitalPoolStorage.sol#L12-L12)']
```solidity
12: contract CapitalPoolStorage is UpgradeableStorage 
```
['[12](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/DeliveryPlaceStorage.sol#L12-L12)']
```solidity
12: contract DeliveryPlaceStorage is UpgradeableStorage 
```
['[15](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/PerMarketsStorage.sol#L15-L15)']
```solidity
15: contract PerMarketsStorage is UpgradeableStorage 
```
['[15](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/SystemConfigStorage.sol#L15-L15)']
```solidity
15: contract SystemConfigStorage is UpgradeableStorage 
```
['[13](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/TokenManagerStorage.sol#L13-L13)']
```solidity
13: contract TokenManagerStorage is UpgradeableStorage 
```


</details>

## [NonCritical-29] Errors should have parameters

### Resolution 
In Solidity, custom errors with parameters offer a gas-efficient way to convey detailed information about issues encountered during contract execution. Unlike revert messages, which are strings consuming more gas, custom errors defined with parameters allow developers to specify types and details of errors succinctly. This method enhances debugging, provides clearer insights into contract failures, and improves the developer's and end-user's understanding of what went wrong, all while optimizing for gas usage and maintaining contract efficiency.

Num of instances: 17

### Findings 


<details><summary>Click to show findings</summary>

['[20](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/ITadleFactory.sol#L20-L21)']
```solidity
20:     
21:     error UnDepoloyedProxyAdmin(); // <= FOUND
```
['[17](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/ICapitalPool.sol#L17-L18)']
```solidity
17:     
18:     error ApproveFailed(); // <= FOUND
```
['[89](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IDeliveryPlace.sol#L89-L90)']
```solidity
89:     
90:     error InvalidOfferStatus(); // <= FOUND
```
['[92](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IDeliveryPlace.sol#L92-L93)']
```solidity
92:     
93:     error InvalidStockStatus(); // <= FOUND
```
['[95](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IDeliveryPlace.sol#L95-L96)']
```solidity
95:     
96:     error InvaildMarketPlaceStatus(); // <= FOUND
```
['[98](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IDeliveryPlace.sol#L98-L99)']
```solidity
98:     
99:     error InvalidStock(); // <= FOUND
```
['[101](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IDeliveryPlace.sol#L101-L102)']
```solidity
101:     
102:     error InvalidStockType(); // <= FOUND
```
['[104](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IDeliveryPlace.sol#L104-L105)']
```solidity
104:     
105:     error InsufficientRemainingPoints(); // <= FOUND
```
['[107](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IDeliveryPlace.sol#L107-L108)']
```solidity
107:     
108:     error InvalidPoints(); // <= FOUND
```
['[110](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IDeliveryPlace.sol#L110-L111)']
```solidity
110:     
111:     error FixedRatioUnsupported(); // <= FOUND
```
['[156](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IPerMarkets.sol#L156-L157)']
```solidity
156:     
157:     error InvalidEachTradeTaxRate(); // <= FOUND
```
['[159](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IPerMarkets.sol#L159-L160)']
```solidity
159:     
160:     error InvalidCollateralRate(); // <= FOUND
```
['[165](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IPerMarkets.sol#L165-L166)']
```solidity
165:     
166:     error MakerAlreadyExist(); // <= FOUND
```
['[168](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IPerMarkets.sol#L168-L169)']
```solidity
168:     
169:     error OfferAlreadyExist(); // <= FOUND
```
['[171](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IPerMarkets.sol#L171-L172)']
```solidity
171:     
172:     error StockAlreadyExist(); // <= FOUND
```
['[174](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IPerMarkets.sol#L174-L175)']
```solidity
174:     
175:     error InvalidOffer(); // <= FOUND
```
['[104](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/ISystemConfig.sol#L104-L105)']
```solidity
104:     
105:     error MarketPlaceAlreadyInitialized(); // <= FOUND
```


</details>

## [NonCritical-30] Consider using OpenZeppelins SafeCall library when making calls to arbitrary contracts

### Resolution 
Using OpenZeppelin's `SafeCall` library for interactions with arbitrary contracts is a best practice in smart contract development. This library provides functions that ensure safer external calls by validating that calls are successfully completed, helping to prevent common pitfalls such as reentrancy attacks or unexpected failures. It encapsulates low-level call operations with safety checks, reducing the risk of vulnerabilities associated with direct interactions with unknown code. Incorporating `SafeCall` enhances contract security and robustness, making it a wise choice for developers aiming to safeguard their applications.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[24](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L24-L28)']
```solidity
24:     function approve(address tokenAddr) external { // <= FOUND
25:         address tokenManager = tadleFactory.relatedContracts(
26:             RelatedContractLibraries.TOKEN_MANAGER
27:         );
28:         (bool success, ) = tokenAddr.call( // <= FOUND
29:             abi.encodeWithSelector(
30:                 APPROVE_SELECTOR,
31:                 tokenManager,
32:                 type(uint256).max
33:             )
34:         );
35: 
36:         if (!success) {
37:             revert ApproveFailed();
38:         }
39:     }
```


</details>

## [NonCritical-31] Unnecessary struct attribute prefix

### Resolution 
In struct definitions, using redundant prefixes for attributes is unnecessary. For instance, in a struct named Employee, attributes like employeeName, employeeID, and employeeEmail can be simplified to name, ID, and email respectively, since they are already inherently associated with Employee. By removing these repetitive prefixes, the code becomes more concise and easier to read, maintaining its contextual clarity.

Num of instances: 2

### Findings 


<details><summary>Click to show findings</summary>

['[241](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IPerMarkets.sol#L241-L246)']
```solidity
241: struct OfferInfo { // <= FOUND
242:     uint256 id;
243:     address authority;
244:     address maker;
245:     OfferStatus offerStatus; // <= FOUND
246:     OfferType offerType; // <= FOUND
247:     AbortOfferStatus abortOfferStatus;
248:     uint256 points;
249:     uint256 amount;
250:     uint256 collateralRate;
251:     uint256 usedPoints;
252:     uint256 tradeTax;
253:     uint256 settledPoints;
254:     uint256 settledPointTokenAmount;
255:     uint256 settledCollateralAmount;
256: }
```
['[272](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IPerMarkets.sol#L272-L275)']
```solidity
272: struct StockInfo { // <= FOUND
273:     uint256 id;
274:     StockStatus stockStatus; // <= FOUND
275:     StockType stockType; // <= FOUND
276:     address authority;
277:     address maker;
278:     address preOffer;
279:     uint256 points;
280:     uint256 amount;
281:     address offer;
282: }
```


</details>

## [Gas-1] Calldata should be used in place of memory function parameters when not mutated

### Resolution 
In Solidity, `calldata` should be used in place of `memory` for function parameters when the function is `external`. This is because `calldata` is a non-modifiable, non-persistent area where function arguments are stored, and it's cheaper in terms of gas than `memory`. It's especially efficient for arrays and complex data types. `calldata` provides a gas-efficient way to pass data in external function calls, whereas `memory` is a temporary space that's erased between external function calls. This distinction is crucial for optimizing smart contracts for gas usage and performance.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[51](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L51-L54)']
```solidity
51:     function deployUpgradeableProxy(
52:         uint8 _relatedContractIndex,
53:         address _logic,
54:         bytes memory _data // <= FOUND
55:     ) external onlyGuardian returns (address) {
56:         
57:         if (!_logic.isContract()) {
58:             revert LogicAddrIsNotContract(_logic);
59:         }
60: 
61:         
62:         UpgradeableProxy _proxy = new UpgradeableProxy(
63:             _logic,
64:             guardian,
65:             address(this),
66:             _data
67:         );
68:         relatedContracts[_relatedContractIndex] = address(_proxy);
69:         emit RelatedContractDeployed(_relatedContractIndex, address(_proxy));
70:         return address(_proxy);
71:     }
```


</details>

## [Gas-2] Usage of smaller uint/int types causes overhead

### Resolution 
When using a smaller int/uint type it first needs to be converted to it's 258 bit counterpart to be operated, this increases the gass cost and thus should be avoided. However it does make sense to use smaller int/uint values within structs provided you pack the struct properly.

Num of instances: 3

### Findings 


<details><summary>Click to show findings</summary>

['[6](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/ITadleFactory.sol#L6-L7)']
```solidity
6:     
7:     function relatedContracts(uint8 _index) external view returns (address); // <= FOUND
```
['[31](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L31-L39)']
```solidity
31:     
39:     mapping(uint8 => address) public relatedContracts; // <= FOUND
```
['[51](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L51-L59)']
```solidity
51:     
58:     function deployUpgradeableProxy(
59:         uint8 _relatedContractIndex, // <= FOUND
60:         address _logic,
61:         bytes memory _data
62:     ) external onlyGuardian returns (address) {
```


</details>

## [Gas-3] Use != 0 instead of > 0

### Resolution 
Replace spotted instances with != 0 for uints as this uses less gas

Num of instances: 2

### Findings 


<details><summary>Click to show findings</summary>

['[257](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L257-L257)']
```solidity
257:             if (_settledPoints > 0) { // <= FOUND
```
['[266](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L266-L266)']
```solidity
266:         if (settledPointTokenAmount > 0) { // <= FOUND
```


</details>

## [Gas-4] Default int values are manually reset

### Resolution 
Using .delete is better than resetting a Solidity variable to its default value manually because it frees up storage space on the Ethereum blockchain, resulting in gas cost savings.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[620](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L620-L620)']
```solidity
620:             makerRefundAmount = 0; // <= FOUND
```


</details>

## [Gas-5] Function calls within for loops

### Resolution 
Making function calls or external calls within loops in Solidity can lead to inefficient gas usage, potential bottlenecks, and increased vulnerability to attacks. Each function call or external call consumes gas, and when executed within a loop, the gas cost multiplies, potentially causing the transaction to run out of gas or exceed block gas limits. This can result in transaction failure or unpredictable behavior.

Num of instances: 2

### Findings 


<details><summary>Click to show findings</summary>

['[203](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L203-L204)']
```solidity
203:        for (uint256 i = 0; i < _tokensLength; ) {
204:             _updateTokenWhiteListed(_tokens[i], _isWhiteListed); // <= FOUND
205:             unchecked {
206:                 ++i;
207:             }
208:         }
```
['[203](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L203-L204)']
```solidity
203:         for (uint256 i = 0; i < _tokensLength; ) {
204:             _updateTokenWhiteListed(_tokens[i], _isWhiteListed); // <= FOUND
205:             unchecked {
206:                 ++i;
207:             }
208:         }
```


</details>

## [Gas-6] For loops in public or external functions should be avoided due to high gas costs and possible DOS

### Resolution 
In Solidity, for loops can potentially cause Denial of Service (DoS) attacks if not handled carefully. DoS attacks can occur when an attacker intentionally exploits the gas cost of a function, causing it to run out of gas or making it too expensive for other users to call. Below are some scenarios where for loops can lead to DoS attacks: Nested for loops can become exceptionally gas expensive and should be used sparingly

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[197](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L197-L203)']
```solidity
197:     function updateTokenWhiteListed(
198:         address[] calldata _tokens,
199:         bool _isWhiteListed
200:     ) external onlyOwner {
201:         uint256 _tokensLength = _tokens.length;
202: 
203:         for (uint256 i = 0; i < _tokensLength; ) { // <= FOUND
204:             _updateTokenWhiteListed(_tokens[i], _isWhiteListed);
205:             unchecked {
206:                 ++i;
207:             }
208:         }
209:     }
```


</details>

## [Gas-7] Use assembly to check for the zero address

### Resolution 
Using assembly for address comparisons in Solidity can save gas because it allows for more direct access to the Ethereum Virtual Machine (EVM), reducing the overhead of higher-level operations. Solidity's high-level abstraction simplifies coding but can introduce additional gas costs. Using assembly for simple operations like address comparisons can be more gas-efficient.

Num of instances: 11

### Findings 


<details><summary>Click to show findings</summary>

['[96](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L96-L127)']
```solidity
96:     function closeBidTaker(address _stock) external {
97:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
98:         ITokenManager tokenManager = tadleFactory.getTokenManager();
99:         StockInfo memory stockInfo = perMarkets.getStockInfo(_stock);
100: 
101:         if (stockInfo.preOffer == address(0x0)) { // <= FOUND
102:             revert InvalidStock();
103:         }
104: 
105:         if (stockInfo.stockType == StockType.Ask) {
106:             revert InvalidStockType();
107:         }
108: 
109:         if (_msgSender() != stockInfo.authority) {
110:             revert Errors.Unauthorized();
111:         }
112: 
113:         (
114:             OfferInfo memory preOfferInfo,
115:             MakerInfo memory makerInfo,
116:             ,
117: 
118:         ) = getOfferInfo(stockInfo.preOffer);
119: 
120:         OfferInfo memory offerInfo;
121:         uint256 userRemainingPoints;
122:         if (makerInfo.offerSettleType == OfferSettleType.Protected) {
123:             offerInfo = preOfferInfo;
124:             userRemainingPoints = stockInfo.points;
125:         } else {
126:             offerInfo = perMarkets.getOfferInfo(makerInfo.originOffer);
127:             if (stockInfo.offer == address(0x0)) { // <= FOUND
128:                 userRemainingPoints = stockInfo.points;
129:             } else {
130:                 OfferInfo memory listOfferInfo = perMarkets.getOfferInfo(
131:                     stockInfo.offer
132:                 );
133:                 userRemainingPoints =
134:                     listOfferInfo.points -
135:                     listOfferInfo.usedPoints;
136:             }
137:         }
138: 
139:         if (userRemainingPoints == 0) {
140:             revert InsufficientRemainingPoints();
141:         }
142: 
143:         if (offerInfo.offerStatus != OfferStatus.Settled) {
144:             revert InvalidOfferStatus();
145:         }
146: 
147:         if (stockInfo.stockStatus != StockStatus.Initialized) {
148:             revert InvalidStockStatus();
149:         }
150: 
151:         uint256 collateralFee;
152:         if (offerInfo.usedPoints > offerInfo.settledPoints) {
153:             if (offerInfo.offerStatus == OfferStatus.Virgin) {
154:                 collateralFee = OfferLibraries.getDepositAmount(
155:                     offerInfo.offerType,
156:                     offerInfo.collateralRate,
157:                     offerInfo.amount,
158:                     true,
159:                     Math.Rounding.Floor
160:                 );
161:             } else {
162:                 uint256 usedAmount = offerInfo.amount.mulDiv(
163:                     offerInfo.usedPoints,
164:                     offerInfo.points,
165:                     Math.Rounding.Floor
166:                 );
167: 
168:                 collateralFee = OfferLibraries.getDepositAmount(
169:                     offerInfo.offerType,
170:                     offerInfo.collateralRate,
171:                     usedAmount,
172:                     true,
173:                     Math.Rounding.Floor
174:                 );
175:             }
176:         }
177: 
178:         uint256 userCollateralFee = collateralFee.mulDiv(
179:             userRemainingPoints,
180:             offerInfo.usedPoints,
181:             Math.Rounding.Floor
182:         );
183: 
184:         tokenManager.addTokenBalance(
185:             TokenBalanceType.RemainingCash,
186:             _msgSender(),
187:             makerInfo.tokenAddress,
188:             userCollateralFee
189:         );
190:         uint256 pointTokenAmount = offerInfo.settledPointTokenAmount.mulDiv(
191:             userRemainingPoints,
192:             offerInfo.usedPoints,
193:             Math.Rounding.Floor
194:         );
195:         tokenManager.addTokenBalance(
196:             TokenBalanceType.PointToken,
197:             _msgSender(),
198:             makerInfo.tokenAddress,
199:             pointTokenAmount
200:         );
201: 
202:         perMarkets.updateStockStatus(_stock, StockStatus.Finished);
203: 
204:         emit CloseBidTaker(
205:             makerInfo.marketPlace,
206:             offerInfo.maker,
207:             _stock,
208:             _msgSender(),
209:             userCollateralFee,
210:             pointTokenAmount
211:         );
212:     }
```
['[406](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L406-L439)']
```solidity
406:     function closeOffer(address _stock, address _offer) external {
407:         OfferInfo storage offerInfo = offerInfoMap[_offer];
408:         StockInfo storage stockInfo = stockInfoMap[_stock];
409: 
410:         if (stockInfo.offer != _offer) {
411:             revert InvalidOfferAccount(stockInfo.offer, _offer);
412:         }
413: 
414:         if (offerInfo.authority != _msgSender()) {
415:             revert Errors.Unauthorized();
416:         }
417: 
418:         if (offerInfo.offerStatus != OfferStatus.Virgin) {
419:             revert InvalidOfferStatus();
420:         }
421: 
422:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
423:         
424:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
425:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
426:             .getMarketPlaceInfo(makerInfo.marketPlace);
427: 
428:         marketPlaceInfo.checkMarketPlaceStatus(
429:             block.timestamp,
430:             MarketPlaceStatus.Online
431:         );
432: 
433:         
434: 
437:         if (
438:             makerInfo.offerSettleType == OfferSettleType.Protected ||
439:             stockInfo.preOffer == address(0x0) // <= FOUND
440:         ) {
441:             uint256 refundAmount = OfferLibraries.getRefundAmount(
442:                 offerInfo.offerType,
443:                 offerInfo.amount,
444:                 offerInfo.points,
445:                 offerInfo.usedPoints,
446:                 offerInfo.collateralRate
447:             );
448: 
449:             ITokenManager tokenManager = tadleFactory.getTokenManager();
450:             tokenManager.addTokenBalance(
451:                 TokenBalanceType.MakerRefund,
452:                 _msgSender(),
453:                 makerInfo.tokenAddress,
454:                 refundAmount
455:             );
456:         }
457: 
458:         offerInfo.offerStatus = OfferStatus.Canceled;
459:         emit CloseOffer(_offer, _msgSender());
460:     }
```
['[470](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L470-L504)']
```solidity
470:     function relistOffer(address _stock, address _offer) external payable {
471:         OfferInfo storage offerInfo = offerInfoMap[_offer];
472:         StockInfo storage stockInfo = stockInfoMap[_stock];
473: 
474:         if (stockInfo.offer != _offer) {
475:             revert InvalidOfferAccount(stockInfo.offer, _offer);
476:         }
477: 
478:         if (offerInfo.authority != _msgSender()) {
479:             revert Errors.Unauthorized();
480:         }
481: 
482:         if (offerInfo.offerStatus != OfferStatus.Canceled) {
483:             revert InvalidOfferStatus();
484:         }
485: 
486:         
487:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
488: 
489:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
490:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
491:             .getMarketPlaceInfo(makerInfo.marketPlace);
492: 
493:         marketPlaceInfo.checkMarketPlaceStatus(
494:             block.timestamp,
495:             MarketPlaceStatus.Online
496:         );
497: 
498:         
499: 
502:         if (
503:             makerInfo.offerSettleType == OfferSettleType.Protected ||
504:             stockInfo.preOffer == address(0x0) // <= FOUND
505:         ) {
506:             uint256 depositAmount = OfferLibraries.getRefundAmount(
507:                 offerInfo.offerType,
508:                 offerInfo.amount,
509:                 offerInfo.points,
510:                 offerInfo.usedPoints,
511:                 offerInfo.collateralRate
512:             );
513: 
514:             ITokenManager tokenManager = tadleFactory.getTokenManager();
515:             tokenManager.tillIn{value: msg.value}(
516:                 _msgSender(),
517:                 makerInfo.tokenAddress,
518:                 depositAmount,
519:                 false
520:             );
521:         }
522: 
523:         
524:         offerInfo.offerStatus = OfferStatus.Virgin;
525:         emit RelistOffer(_offer, _msgSender());
526:     }
```
['[839](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L839-L847)']
```solidity
839:     function _updateReferralBonus(
840:         uint256 platformFee,
841:         uint256 depositAmount,
842:         address stockAddr,
843:         MakerInfo storage makerInfo,
844:         ReferralInfo memory referralInfo,
845:         ITokenManager tokenManager
846:     ) internal returns (uint256 remainingPlatformFee) {
847:         if (referralInfo.referrer == address(0x0)) { // <= FOUND
848:             remainingPlatformFee = platformFee;
849:         } else {
850:             
851: 
858:             uint256 referrerReferralBonus = platformFee.mulDiv(
859:                 referralInfo.referrerRate,
860:                 Constants.REFERRAL_RATE_DECIMAL_SCALER,
861:                 Math.Rounding.Floor
862:             );
863: 
864:             
865: 
868:             tokenManager.addTokenBalance(
869:                 TokenBalanceType.ReferralBonus,
870:                 referralInfo.referrer,
871:                 makerInfo.tokenAddress,
872:                 referrerReferralBonus
873:             );
874: 
875:             uint256 authorityReferralBonus = platformFee.mulDiv(
876:                 referralInfo.authorityRate,
877:                 Constants.REFERRAL_RATE_DECIMAL_SCALER,
878:                 Math.Rounding.Floor
879:             );
880: 
881:             tokenManager.addTokenBalance(
882:                 TokenBalanceType.ReferralBonus,
883:                 _msgSender(),
884:                 makerInfo.tokenAddress,
885:                 authorityReferralBonus
886:             );
887: 
888:             remainingPlatformFee =
889:                 platformFee -
890:                 referrerReferralBonus -
891:                 authorityReferralBonus;
892: 
893:             
894:             emit ReferralBonus(
895:                 stockAddr,
896:                 _msgSender(),
897:                 referralInfo.referrer,
898:                 authorityReferralBonus,
899:                 referrerReferralBonus,
900:                 depositAmount,
901:                 platformFee
902:             );
903:         }
904:     }
```
['[41](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L41-L50)']
```solidity
41:     function updateReferrerInfo(
42:         address _referrer,
43:         uint256 _referrerRate,
44:         uint256 _authorityRate
45:     ) external {
46:         if (_msgSender() == _referrer) {
47:             revert InvalidReferrer(_referrer);
48:         }
49: 
50:         if (_referrer == address(0x0)) { // <= FOUND
51:             revert Errors.ZeroAddress();
52:         }
53: 
54:         if (_referrerRate < baseReferralRate) {
55:             revert InvalidReferrerRate(_referrerRate);
56:         }
57: 
58:         uint256 referralExtraRate = referralExtraRateMap[_referrer];
59:         uint256 totalRate = baseReferralRate + referralExtraRate;
60: 
61:         if (totalRate > Constants.REFERRAL_RATE_DECIMAL_SCALER) {
62:             revert InvalidTotalRate(totalRate);
63:         }
64: 
65:         if (_referrerRate + _authorityRate != totalRate) {
66:             revert InvalidRate(_referrerRate, _authorityRate, totalRate);
67:         }
68: 
69:         ReferralInfo storage referralInfo = referralInfoMap[_referrer];
70:         referralInfo.referrer = _referrer;
71:         referralInfo.referrerRate = _referrerRate;
72:         referralInfo.authorityRate = _authorityRate;
73: 
74:         emit UpdateReferrerInfo(
75:             msg.sender,
76:             _referrer,
77:             _referrerRate,
78:             _authorityRate
79:         );
80:     }
```
['[56](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L56-L75)']
```solidity
56:     function tillIn(
57:         address _accountAddress,
58:         address _tokenAddress,
59:         uint256 _amount,
60:         bool _isPointToken
61:     )
62:         external
63:         payable
64:         onlyRelatedContracts(tadleFactory, _msgSender())
65:         onlyInTokenWhiteList(_isPointToken, _tokenAddress)
66:     {
67:         
68:         if (_amount == 0) {
69:             return;
70:         }
71: 
72:         address capitalPoolAddr = tadleFactory.relatedContracts(
73:             RelatedContractLibraries.CAPITAL_POOL
74:         );
75:         if (capitalPoolAddr == address(0x0)) { // <= FOUND
76:             revert Errors.ContractIsNotDeployed();
77:         }
78: 
79:         if (_tokenAddress == wrappedNativeToken) {
80:             
81: 
86:             if (msg.value < _amount) {
87:                 revert Errors.NotEnoughMsgValue(msg.value, _amount);
88:             }
89:             IWrappedNativeToken(wrappedNativeToken).deposit{value: _amount}();
90:             _safe_transfer(wrappedNativeToken, capitalPoolAddr, _amount);
91:         } else {
92:             
93:             _transfer(
94:                 _tokenAddress,
95:                 _accountAddress,
96:                 capitalPoolAddr,
97:                 _amount,
98:                 capitalPoolAddr
99:             );
100:         }
101: 
102:         emit TillIn(_accountAddress, _tokenAddress, _amount, _isPointToken);
103:     }
```
['[39](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L39-L79)']
```solidity
39:     function createOffer(CreateOfferParams calldata params) external payable {
40:         
41: 
45:         if (params.points == 0x0 || params.amount == 0x0) { // <= FOUND
46:             revert Errors.AmountIsZero();
47:         }
48: 
49:         if (params.eachTradeTax > Constants.EACH_TRADE_TAX_DECIMAL_SCALER) {
50:             revert InvalidEachTradeTaxRate();
51:         }
52: 
53:         if (params.collateralRate < Constants.COLLATERAL_RATE_DECIMAL_SCALER) {
54:             revert InvalidCollateralRate();
55:         }
56: 
57:         
58:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
59:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
60:             .getMarketPlaceInfo(params.marketPlace);
61:         marketPlaceInfo.checkMarketPlaceStatus(
62:             block.timestamp,
63:             MarketPlaceStatus.Online
64:         );
65: 
66:         
67:         address makerAddr = GenerateAddress.generateMakerAddress(offerId);
68:         address offerAddr = GenerateAddress.generateOfferAddress(offerId);
69:         address stockAddr = GenerateAddress.generateStockAddress(offerId);
70: 
71:         if (makerInfoMap[makerAddr].authority != address(0x0)) { // <= FOUND
72:             revert MakerAlreadyExist();
73:         }
74: 
75:         if (offerInfoMap[offerAddr].authority != address(0x0)) { // <= FOUND
76:             revert OfferAlreadyExist();
77:         }
78: 
79:         if (stockInfoMap[stockAddr].authority != address(0x0)) { // <= FOUND
80:             revert StockAlreadyExist();
81:         }
82: 
83:         offerId = offerId + 1;
84: 
85:         {
86:             
87:             uint256 transferAmount = OfferLibraries.getDepositAmount(
88:                 params.offerType,
89:                 params.collateralRate,
90:                 params.amount,
91:                 true,
92:                 Math.Rounding.Ceil
93:             );
94: 
95:             ITokenManager tokenManager = tadleFactory.getTokenManager();
96:             tokenManager.tillIn{value: msg.value}(
97:                 _msgSender(),
98:                 params.tokenAddress,
99:                 transferAmount,
100:                 false
101:             );
102:         }
103: 
104:         
105:         makerInfoMap[makerAddr] = MakerInfo({
106:             offerSettleType: params.offerSettleType,
107:             authority: _msgSender(),
108:             marketPlace: params.marketPlace,
109:             tokenAddress: params.tokenAddress,
110:             originOffer: offerAddr,
111:             platformFee: 0,
112:             eachTradeTax: params.eachTradeTax
113:         });
114: 
115:         
116:         offerInfoMap[offerAddr] = OfferInfo({
117:             id: offerId,
118:             authority: _msgSender(),
119:             maker: makerAddr,
120:             offerStatus: OfferStatus.Virgin,
121:             offerType: params.offerType,
122:             points: params.points,
123:             amount: params.amount,
124:             collateralRate: params.collateralRate,
125:             abortOfferStatus: AbortOfferStatus.Initialized,
126:             usedPoints: 0,
127:             tradeTax: 0,
128:             settledPoints: 0,
129:             settledPointTokenAmount: 0,
130:             settledCollateralAmount: 0
131:         });
132: 
133:         
134:         stockInfoMap[stockAddr] = StockInfo({
135:             id: offerId,
136:             stockStatus: StockStatus.Initialized,
137:             stockType: params.offerType == OfferType.Ask
138:                 ? StockType.Bid
139:                 : StockType.Ask,
140:             authority: _msgSender(),
141:             maker: makerAddr,
142:             preOffer: address(0x0),
143:             offer: offerAddr,
144:             points: params.points,
145:             amount: params.amount
146:         });
147: 
148:         emit CreateOffer(
149:             offerAddr,
150:             makerAddr,
151:             stockAddr,
152:             params.marketPlace,
153:             _msgSender(),
154:             params.points,
155:             params.amount
156:         );
157:     }
```
['[164](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L164-L207)']
```solidity
164:     function createTaker(address _offer, uint256 _points) external payable {
165:         
166: 
170:         if (_points == 0x0) { // <= FOUND
171:             revert Errors.AmountIsZero();
172:         }
173: 
174:         OfferInfo storage offerInfo = offerInfoMap[_offer];
175:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
176:         if (offerInfo.offerStatus != OfferStatus.Virgin) {
177:             revert InvalidOfferStatus();
178:         }
179: 
180:         if (offerInfo.points < _points + offerInfo.usedPoints) {
181:             revert NotEnoughPoints(
182:                 offerInfo.points,
183:                 offerInfo.usedPoints,
184:                 _points
185:             );
186:         }
187: 
188:         
189:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
190:         {
191:             MarketPlaceInfo memory marketPlaceInfo = systemConfig
192:                 .getMarketPlaceInfo(makerInfo.marketPlace);
193:             marketPlaceInfo.checkMarketPlaceStatus(
194:                 block.timestamp,
195:                 MarketPlaceStatus.Online
196:             );
197:         }
198: 
199:         ReferralInfo memory referralInfo = systemConfig.getReferralInfo(
200:             _msgSender()
201:         );
202: 
203:         uint256 platformFeeRate = systemConfig.getPlatformFeeRate(_msgSender());
204: 
205:         
206:         address stockAddr = GenerateAddress.generateStockAddress(offerId);
207:         if (stockInfoMap[stockAddr].authority != address(0x0)) { // <= FOUND
208:             revert StockAlreadyExist();
209:         }
210: 
211:         
212:         uint256 depositAmount = _points.mulDiv(
213:             offerInfo.amount,
214:             offerInfo.points,
215:             Math.Rounding.Ceil
216:         );
217:         uint256 platformFee = depositAmount.mulDiv(
218:             platformFeeRate,
219:             Constants.PLATFORM_FEE_DECIMAL_SCALER
220:         );
221:         uint256 tradeTax = depositAmount.mulDiv(
222:             makerInfo.eachTradeTax,
223:             Constants.EACH_TRADE_TAX_DECIMAL_SCALER
224:         );
225: 
226:         ITokenManager tokenManager = tadleFactory.getTokenManager();
227:         _depositTokenWhenCreateTaker(
228:             platformFee,
229:             depositAmount,
230:             tradeTax,
231:             makerInfo,
232:             offerInfo,
233:             tokenManager
234:         );
235: 
236:         offerInfo.usedPoints = offerInfo.usedPoints + _points;
237: 
238:         
239:         stockInfoMap[stockAddr] = StockInfo({
240:             id: offerId,
241:             stockStatus: StockStatus.Initialized,
242:             stockType: offerInfo.offerType == OfferType.Ask
243:                 ? StockType.Bid
244:                 : StockType.Ask,
245:             authority: _msgSender(),
246:             maker: offerInfo.maker,
247:             preOffer: _offer,
248:             points: _points,
249:             amount: depositAmount,
250:             offer: address(0x0)
251:         });
252: 
253:         offerId = offerId + 1;
254:         uint256 remainingPlatformFee = _updateReferralBonus(
255:             platformFee,
256:             depositAmount,
257:             stockAddr,
258:             makerInfo,
259:             referralInfo,
260:             tokenManager
261:         );
262: 
263:         makerInfo.platformFee = makerInfo.platformFee + remainingPlatformFee;
264: 
265:         _updateTokenBalanceWhenCreateTaker(
266:             _offer,
267:             tradeTax,
268:             depositAmount,
269:             offerInfo,
270:             makerInfo,
271:             tokenManager
272:         );
273: 
274:         
275:         emit CreateTaker(
276:             _offer,
277:             msg.sender,
278:             stockAddr,
279:             _points,
280:             depositAmount,
281:             tradeTax,
282:             remainingPlatformFee
283:         );
284:     }
```
['[295](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L295-L365)']
```solidity
295:     function listOffer(
296:         address _stock,
297:         uint256 _amount,
298:         uint256 _collateralRate
299:     ) external payable {
300:         if (_amount == 0x0) { // <= FOUND
301:             revert Errors.AmountIsZero();
302:         }
303: 
304:         if (_collateralRate < Constants.COLLATERAL_RATE_DECIMAL_SCALER) {
305:             revert InvalidCollateralRate();
306:         }
307: 
308:         StockInfo storage stockInfo = stockInfoMap[_stock];
309:         if (_msgSender() != stockInfo.authority) {
310:             revert Errors.Unauthorized();
311:         }
312: 
313:         OfferInfo storage offerInfo = offerInfoMap[stockInfo.preOffer];
314:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
315: 
316:         
317:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
318:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
319:             .getMarketPlaceInfo(makerInfo.marketPlace);
320: 
321:         marketPlaceInfo.checkMarketPlaceStatus(
322:             block.timestamp,
323:             MarketPlaceStatus.Online
324:         );
325: 
326:         if (stockInfo.offer != address(0x0)) { // <= FOUND
327:             revert OfferAlreadyExist();
328:         }
329: 
330:         if (stockInfo.stockType != StockType.Bid) {
331:             revert InvalidStockType(StockType.Bid, stockInfo.stockType);
332:         }
333: 
334:         
335:         if (makerInfo.offerSettleType == OfferSettleType.Turbo) {
336:             address originOffer = makerInfo.originOffer;
337:             OfferInfo memory originOfferInfo = offerInfoMap[originOffer];
338: 
339:             if (_collateralRate != originOfferInfo.collateralRate) {
340:                 revert InvalidCollateralRate();
341:             }
342:             originOfferInfo.abortOfferStatus = AbortOfferStatus.SubOfferListed;
343:         }
344: 
345:         
346:         if (makerInfo.offerSettleType == OfferSettleType.Protected) {
347:             uint256 transferAmount = OfferLibraries.getDepositAmount(
348:                 offerInfo.offerType,
349:                 offerInfo.collateralRate,
350:                 _amount,
351:                 true,
352:                 Math.Rounding.Ceil
353:             );
354: 
355:             ITokenManager tokenManager = tadleFactory.getTokenManager();
356:             tokenManager.tillIn{value: msg.value}(
357:                 _msgSender(),
358:                 makerInfo.tokenAddress,
359:                 transferAmount,
360:                 false
361:             );
362:         }
363: 
364:         address offerAddr = GenerateAddress.generateOfferAddress(stockInfo.id);
365:         if (offerInfoMap[offerAddr].authority != address(0x0)) { // <= FOUND
366:             revert OfferAlreadyExist();
367:         }
368: 
369:         
370:         offerInfoMap[offerAddr] = OfferInfo({
371:             id: stockInfo.id,
372:             authority: _msgSender(),
373:             maker: offerInfo.maker,
374:             offerStatus: OfferStatus.Virgin,
375:             offerType: offerInfo.offerType,
376:             abortOfferStatus: AbortOfferStatus.Initialized,
377:             points: stockInfo.points,
378:             amount: _amount,
379:             collateralRate: _collateralRate,
380:             usedPoints: 0,
381:             tradeTax: 0,
382:             settledPoints: 0,
383:             settledPointTokenAmount: 0,
384:             settledCollateralAmount: 0
385:         });
386: 
387:         stockInfo.offer = offerAddr;
388: 
389:         emit ListOffer(
390:             offerAddr,
391:             _stock,
392:             _msgSender(),
393:             stockInfo.points,
394:             _amount
395:         );
396:     }
```
['[233](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L233-L245)']
```solidity
233:     function _transfer(
234:         address _token,
235:         address _from,
236:         address _to,
237:         uint256 _amount,
238:         address _capitalPoolAddr
239:     ) internal {
240:         uint256 fromBalanceBef = IERC20(_token).balanceOf(_from);
241:         uint256 toBalanceBef = IERC20(_token).balanceOf(_to);
242: 
243:         if (
244:             _from == _capitalPoolAddr &&
245:             IERC20(_token).allowance(_from, address(this)) == 0x0 // <= FOUND
246:         ) {
247:             ICapitalPool(_capitalPoolAddr).approve(address(this));
248:         }
249: 
250:         _safe_transfer_from(_token, _from, _to, _amount);
251: 
252:         uint256 fromBalanceAft = IERC20(_token).balanceOf(_from);
253:         uint256 toBalanceAft = IERC20(_token).balanceOf(_to);
254: 
255:         if (fromBalanceAft != fromBalanceBef - _amount) {
256:             revert TransferFailed();
257:         }
258: 
259:         if (toBalanceAft != toBalanceBef + _amount) {
260:             revert TransferFailed();
261:         }
262:     }
```
['[536](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L536-L570)']
```solidity
536:     function abortAskOffer(address _stock, address _offer) external {
537:         StockInfo storage stockInfo = stockInfoMap[_stock];
538:         OfferInfo storage offerInfo = offerInfoMap[_offer];
539: 
540:         if (offerInfo.authority != _msgSender()) {
541:             revert Errors.Unauthorized();
542:         }
543: 
544:         if (stockInfo.offer != _offer) {
545:             revert InvalidOfferAccount(stockInfo.offer, _offer);
546:         }
547: 
548:         if (offerInfo.offerType != OfferType.Ask) {
549:             revert InvalidOfferType(OfferType.Ask, offerInfo.offerType);
550:         }
551: 
552:         if (offerInfo.abortOfferStatus != AbortOfferStatus.Initialized) {
553:             revert InvalidAbortOfferStatus(
554:                 AbortOfferStatus.Initialized,
555:                 offerInfo.abortOfferStatus
556:             );
557:         }
558: 
559:         if (
560:             offerInfo.offerStatus != OfferStatus.Virgin &&
561:             offerInfo.offerStatus != OfferStatus.Canceled
562:         ) {
563:             revert InvalidOfferStatus();
564:         }
565: 
566:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
567: 
568:         if (
569:             makerInfo.offerSettleType == OfferSettleType.Turbo &&
570:             stockInfo.preOffer != address(0x0) // <= FOUND
571:         ) {
572:             revert InvalidOffer();
573:         }
574: 
575:         
576:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
577:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
578:             .getMarketPlaceInfo(makerInfo.marketPlace);
579:         marketPlaceInfo.checkMarketPlaceStatus(
580:             block.timestamp,
581:             MarketPlaceStatus.Online
582:         );
583: 
584:         uint256 remainingAmount;
585:         if (offerInfo.offerStatus == OfferStatus.Virgin) {
586:             remainingAmount = offerInfo.amount;
587:         } else {
588:             remainingAmount = offerInfo.amount.mulDiv(
589:                 offerInfo.usedPoints,
590:                 offerInfo.points,
591:                 Math.Rounding.Floor
592:             );
593:         }
594: 
595:         uint256 transferAmount = OfferLibraries.getDepositAmount(
596:             offerInfo.offerType,
597:             offerInfo.collateralRate,
598:             remainingAmount,
599:             true,
600:             Math.Rounding.Floor
601:         );
602:         uint256 totalUsedAmount = offerInfo.amount.mulDiv(
603:             offerInfo.usedPoints,
604:             offerInfo.points,
605:             Math.Rounding.Ceil
606:         );
607:         uint256 totalDepositAmount = OfferLibraries.getDepositAmount(
608:             offerInfo.offerType,
609:             offerInfo.collateralRate,
610:             totalUsedAmount,
611:             false,
612:             Math.Rounding.Ceil
613:         );
614: 
615:         
616:         uint256 makerRefundAmount;
617:         if (transferAmount > totalDepositAmount) {
618:             makerRefundAmount = transferAmount - totalDepositAmount;
619:         } else {
620:             makerRefundAmount = 0;
621:         }
622: 
623:         ITokenManager tokenManager = tadleFactory.getTokenManager();
624:         tokenManager.addTokenBalance(
625:             TokenBalanceType.MakerRefund,
626:             _msgSender(),
627:             makerInfo.tokenAddress,
628:             makerRefundAmount
629:         );
630: 
631:         offerInfo.abortOfferStatus = AbortOfferStatus.Aborted;
632:         offerInfo.offerStatus = OfferStatus.Settled;
633: 
634:         emit AbortAskOffer(_offer, _msgSender());
635:     }
```


</details>

## [Gas-8] Redundant state variable getters

### Resolution 
Getters for public state variables are automatically generated so there is no need to code them manually and lose gas

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[212](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L212-L213)']
```solidity
212:     function getBaseReferralRate() external view returns (uint256) {
213:         return baseReferralRate; // <= FOUND
214:     }
```


</details>

## [Gas-9] Structs can be packed into fewer storage slots

### Resolution 
In Solidity, each storage slot has a size of 32 bytes. If a struct contains multiple uint values, it's efficient to pack these into as few storage slots as possible to optimize gas usage. The EVM (Ethereum Virtual Machine) charges gas for each storage operation, so minimizing the number of slots used can result in substantial gas savings. This can be achieved by ordering struct fields according to their size or by using smaller data types where possible. However, developers must balance these optimizations with the need for code clarity and the precision requirements of their application. Always ensure that data packing does not compromise the functionality or security of the contract.

Num of instances: 6

### Findings 


<details><summary>Click to show findings</summary>

['[213](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IPerMarkets.sol#L213-L220)']
```solidity
213: struct MakerInfo {
214:     OfferSettleType offerSettleType;
215:     address authority;
216:     address marketPlace;
217:     address tokenAddress;
218:     address originOffer;
219:     uint256 platformFee; // <= FOUND
220:     uint256 eachTradeTax; // <= FOUND
221: }
```
['[241](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IPerMarkets.sol#L241-L255)']
```solidity
241: struct OfferInfo {
242:     uint256 id; // <= FOUND
243:     address authority;
244:     address maker;
245:     OfferStatus offerStatus;
246:     OfferType offerType;
247:     AbortOfferStatus abortOfferStatus;
248:     uint256 points; // <= FOUND
249:     uint256 amount; // <= FOUND
250:     uint256 collateralRate; // <= FOUND
251:     uint256 usedPoints; // <= FOUND
252:     uint256 tradeTax; // <= FOUND
253:     uint256 settledPoints; // <= FOUND
254:     uint256 settledPointTokenAmount; // <= FOUND
255:     uint256 settledCollateralAmount; // <= FOUND
256: }
```
['[272](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IPerMarkets.sol#L272-L280)']
```solidity
272: struct StockInfo {
273:     uint256 id; // <= FOUND
274:     StockStatus stockStatus;
275:     StockType stockType;
276:     address authority;
277:     address maker;
278:     address preOffer;
279:     uint256 points; // <= FOUND
280:     uint256 amount; // <= FOUND
281:     address offer;
282: }
```
['[297](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/IPerMarkets.sol#L297-L303)']
```solidity
297: struct CreateOfferParams {
298:     address marketPlace;
299:     address tokenAddress;
300:     uint256 points; // <= FOUND
301:     uint256 amount; // <= FOUND
302:     uint256 collateralRate; // <= FOUND
303:     uint256 eachTradeTax; // <= FOUND
304:     OfferType offerType;
305:     OfferSettleType offerSettleType;
306: }
```
['[139](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/ISystemConfig.sol#L139-L145)']
```solidity
139: struct MarketPlaceInfo {
140:     bool fixedratio;
141:     MarketPlaceStatus status;
142:     address tokenAddress;
143:     uint256 tokenPerPoint; // <= FOUND
144:     uint256 tge; // <= FOUND
145:     uint256 settlementPeriod; // <= FOUND
146: }
```
['[156](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/interfaces/ISystemConfig.sol#L156-L159)']
```solidity
156: struct ReferralInfo {
157:     address referrer;
158:     uint256 referrerRate; // <= FOUND
159:     uint256 authorityRate; // <= FOUND
160: }
```


</details>

## [Gas-10] Don't use _msgSender() if not supporting EIP-2771

### Resolution 
From a gas efficiency perspective, using `_msgSender()` in a contract not intended to support EIP-2771 could add unnecessary overhead. The `_msgSender()` function includes checks to determine if the transaction was forwarded, which involves extra function calls that consume more gas than a simple `msg.sender`.

If a contract doesn't require EIP-2771 meta-transaction support, using `msg.sender` directly is more gas efficient. `msg.sender` is a globally accessible variable in Solidity that doesn't require an extra function call, making it a less costly choice.

In the context of Ethereum, where every operation has a gas cost, it's crucial to eliminate unnecessary computations to optimize contract execution and minimize transaction fees. Therefore, if EIP-2771 support isn't necessary, it's recommended to use `msg.sender` instead of `_msgSender()`.

Num of instances: 51

### Findings 


<details><summary>Click to show findings</summary>

['[43](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L43-L43)']
```solidity
43:         if (_msgSender() != offerInfo.authority) { // <= FOUND
```
['[71](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L71-L73)']
```solidity
71:         tokenManager.addTokenBalance(
72:             TokenBalanceType.MakerRefund,
73:             _msgSender(), // <= FOUND
74:             makerInfo.tokenAddress,
75:             refundAmount
76:         );
```
['[81](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L81-L85)']
```solidity
81:         emit CloseBidOffer(
82:             makerInfo.marketPlace,
83:             offerInfo.maker,
84:             _offer,
85:             _msgSender() // <= FOUND
86:         );
```
['[109](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L109-L109)']
```solidity
109:         if (_msgSender() != stockInfo.authority) { // <= FOUND
```
['[184](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L184-L186)']
```solidity
184:         tokenManager.addTokenBalance(
185:             TokenBalanceType.RemainingCash,
186:             _msgSender(), // <= FOUND
187:             makerInfo.tokenAddress,
188:             userCollateralFee
189:         );
```
['[195](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L195-L197)']
```solidity
195:         tokenManager.addTokenBalance(
196:             TokenBalanceType.PointToken,
197:             _msgSender(), // <= FOUND
198:             makerInfo.tokenAddress,
199:             pointTokenAmount
200:         );
```
['[204](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L204-L208)']
```solidity
204:         emit CloseBidTaker(
205:             makerInfo.marketPlace,
206:             offerInfo.maker,
207:             _stock,
208:             _msgSender(), // <= FOUND
209:             userCollateralFee,
210:             pointTokenAmount
211:         );
```
['[250](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L250-L250)']
```solidity
250:             if (_msgSender() != offerInfo.authority) { // <= FOUND
```
['[254](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L254-L254)']
```solidity
254:             if (_msgSender() != owner()) { // <= FOUND
```
['[267](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L267-L268)']
```solidity
267:             tokenManager.tillIn(
268:                 _msgSender(), // <= FOUND
269:                 marketPlaceInfo.tokenAddress,
270:                 settledPointTokenAmount,
271:                 true
272:             );
```
['[301](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L301-L303)']
```solidity
301:             tokenManager.addTokenBalance(
302:                 TokenBalanceType.SalesRevenue,
303:                 _msgSender(), // <= FOUND
304:                 makerInfo.tokenAddress,
305:                 makerRefundAmount
306:             );
```
['[316](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L316-L320)']
```solidity
316:         emit SettleAskMaker(
317:             makerInfo.marketPlace,
318:             offerInfo.maker,
319:             _offer,
320:             _msgSender(), // <= FOUND
321:             _settledPoints,
322:             settledPointTokenAmount,
323:             makerRefundAmount
324:         );
```
['[401](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L401-L403)']
```solidity
401:             tokenManager.addTokenBalance(
402:                 TokenBalanceType.RemainingCash,
403:                 _msgSender(), // <= FOUND
404:                 makerInfo.tokenAddress,
405:                 collateralFee
406:             );
```
['[423](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L423-L428)']
```solidity
423:         emit SettleAskTaker(
424:             makerInfo.marketPlace,
425:             offerInfo.maker,
426:             _stock,
427:             stockInfo.preOffer,
428:             _msgSender(), // <= FOUND
429:             _settledPoints,
430:             settledPointTokenAmount,
431:             collateralFee
432:         );
```
['[96](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L96-L97)']
```solidity
96:             tokenManager.tillIn{value: msg.value}(
97:                 _msgSender(), // <= FOUND
98:                 params.tokenAddress,
99:                 transferAmount,
100:                 false
101:             );
```
['[105](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L105-L108)']
```solidity
105:         
106:         makerInfoMap[makerAddr] = MakerInfo({
107:             offerSettleType: params.offerSettleType,
108:             authority: _msgSender(), // <= FOUND
109:             marketPlace: params.marketPlace,
110:             tokenAddress: params.tokenAddress,
111:             originOffer: offerAddr,
112:             platformFee: 0,
113:             eachTradeTax: params.eachTradeTax
114:         });
```
['[116](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L116-L119)']
```solidity
116:         
117:         offerInfoMap[offerAddr] = OfferInfo({
118:             id: offerId,
119:             authority: _msgSender(), // <= FOUND
120:             maker: makerAddr,
121:             offerStatus: OfferStatus.Virgin,
122:             offerType: params.offerType,
123:             points: params.points,
124:             amount: params.amount,
125:             collateralRate: params.collateralRate,
126:             abortOfferStatus: AbortOfferStatus.Initialized,
127:             usedPoints: 0,
128:             tradeTax: 0,
129:             settledPoints: 0,
130:             settledPointTokenAmount: 0,
131:             settledCollateralAmount: 0
132:         });
```
['[134](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L134-L141)']
```solidity
134:         
135:         stockInfoMap[stockAddr] = StockInfo({
136:             id: offerId,
137:             stockStatus: StockStatus.Initialized,
138:             stockType: params.offerType == OfferType.Ask
139:                 ? StockType.Bid
140:                 : StockType.Ask,
141:             authority: _msgSender(), // <= FOUND
142:             maker: makerAddr,
143:             preOffer: address(0x0),
144:             offer: offerAddr,
145:             points: params.points,
146:             amount: params.amount
147:         });
```
['[148](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L148-L153)']
```solidity
148:         emit CreateOffer(
149:             offerAddr,
150:             makerAddr,
151:             stockAddr,
152:             params.marketPlace,
153:             _msgSender(), // <= FOUND
154:             params.points,
155:             params.amount
156:         );
```
['[199](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L199-L200)']
```solidity
199:         ReferralInfo memory referralInfo = systemConfig.getReferralInfo(
200:             _msgSender() // <= FOUND
201:         );
```
['[203](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L203-L203)']
```solidity
203:         uint256 platformFeeRate = systemConfig.getPlatformFeeRate(_msgSender()); // <= FOUND
```
['[239](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L239-L246)']
```solidity
239:         
240:         stockInfoMap[stockAddr] = StockInfo({
241:             id: offerId,
242:             stockStatus: StockStatus.Initialized,
243:             stockType: offerInfo.offerType == OfferType.Ask
244:                 ? StockType.Bid
245:                 : StockType.Ask,
246:             authority: _msgSender(), // <= FOUND
247:             maker: offerInfo.maker,
248:             preOffer: _offer,
249:             points: _points,
250:             amount: depositAmount,
251:             offer: address(0x0)
252:         });
```
['[356](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L356-L357)']
```solidity
356:             tokenManager.tillIn{value: msg.value}(
357:                 _msgSender(), // <= FOUND
358:                 makerInfo.tokenAddress,
359:                 transferAmount,
360:                 false
361:             );
```
['[370](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L370-L373)']
```solidity
370:         
371:         offerInfoMap[offerAddr] = OfferInfo({
372:             id: stockInfo.id,
373:             authority: _msgSender(), // <= FOUND
374:             maker: offerInfo.maker,
375:             offerStatus: OfferStatus.Virgin,
376:             offerType: offerInfo.offerType,
377:             abortOfferStatus: AbortOfferStatus.Initialized,
378:             points: stockInfo.points,
379:             amount: _amount,
380:             collateralRate: _collateralRate,
381:             usedPoints: 0,
382:             tradeTax: 0,
383:             settledPoints: 0,
384:             settledPointTokenAmount: 0,
385:             settledCollateralAmount: 0
386:         });
```
['[389](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L389-L392)']
```solidity
389:         emit ListOffer(
390:             offerAddr,
391:             _stock,
392:             _msgSender(), // <= FOUND
393:             stockInfo.points,
394:             _amount
395:         );
```
['[414](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L414-L414)']
```solidity
414:         if (offerInfo.authority != _msgSender()) { // <= FOUND
```
['[450](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L450-L452)']
```solidity
450:             tokenManager.addTokenBalance(
451:                 TokenBalanceType.MakerRefund,
452:                 _msgSender(), // <= FOUND
453:                 makerInfo.tokenAddress,
454:                 refundAmount
455:             );
```
['[459](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L459-L459)']
```solidity
459:         emit CloseOffer(_offer, _msgSender()); // <= FOUND
```
['[515](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L515-L516)']
```solidity
515:             tokenManager.tillIn{value: msg.value}(
516:                 _msgSender(), // <= FOUND
517:                 makerInfo.tokenAddress,
518:                 depositAmount,
519:                 false
520:             );
```
['[525](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L525-L525)']
```solidity
525:         emit RelistOffer(_offer, _msgSender()); // <= FOUND
```
['[624](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L624-L626)']
```solidity
624:         tokenManager.addTokenBalance(
625:             TokenBalanceType.MakerRefund,
626:             _msgSender(), // <= FOUND
627:             makerInfo.tokenAddress,
628:             makerRefundAmount
629:         );
```
['[634](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L634-L634)']
```solidity
634:         emit AbortAskOffer(_offer, _msgSender()); // <= FOUND
```
['[649](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L649-L649)']
```solidity
649:         if (stockInfo.authority != _msgSender()) { // <= FOUND
```
['[687](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L687-L689)']
```solidity
687:         tokenManager.addTokenBalance(
688:             TokenBalanceType.MakerRefund,
689:             _msgSender(), // <= FOUND
690:             makerInfo.tokenAddress,
691:             transferAmount
692:         );
```
['[696](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L696-L696)']
```solidity
696:         emit AbortBidTaker(_offer, _msgSender()); // <= FOUND
```
['[705](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L705-L714)']
```solidity
705:     
711:     function updateOfferStatus(
712:         address _offer,
713:         OfferStatus _status
714:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) { // <= FOUND
```
['[721](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L721-L730)']
```solidity
721:     
727:     function updateStockStatus(
728:         address _stock,
729:         StockStatus _status
730:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) { // <= FOUND
```
['[738](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L738-L749)']
```solidity
738:     
745:     function settledAskOffer(
746:         address _offer,
747:         uint256 _settledPoints,
748:         uint256 _settledPointTokenAmount
749:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) { // <= FOUND
```
['[759](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L759-L772)']
```solidity
759:     
767:     function settleAskTaker(
768:         address _offer,
769:         address _stock,
770:         uint256 _settledPoints,
771:         uint256 _settledPointTokenAmount
772:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) { // <= FOUND
```
['[356](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L356-L357)']
```solidity
356:         tokenManager.tillIn{value: msg.value}(
357:             _msgSender(), // <= FOUND
358:             makerInfo.tokenAddress,
359:             transferAmount,
360:             false
361:         );
```
['[881](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L881-L883)']
```solidity
881:             tokenManager.addTokenBalance(
882:                 TokenBalanceType.ReferralBonus,
883:                 _msgSender(), // <= FOUND
884:                 makerInfo.tokenAddress,
885:                 authorityReferralBonus
886:             );
```
['[894](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L894-L897)']
```solidity
894:             
895:             emit ReferralBonus(
896:                 stockAddr,
897:                 _msgSender(), // <= FOUND
898:                 referralInfo.referrer,
899:                 authorityReferralBonus,
900:                 referrerReferralBonus,
901:                 depositAmount,
902:                 platformFee
903:             );
```
['[942](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L942-L944)']
```solidity
942:             tokenManager.addTokenBalance(
943:                 TokenBalanceType.SalesRevenue,
944:                 _msgSender(), // <= FOUND
945:                 makerInfo.tokenAddress,
946:                 _depositAmount
947:             );
```
['[46](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L46-L46)']
```solidity
46:         if (_msgSender() == _referrer) { // <= FOUND
```
['[56](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L56-L73)']
```solidity
56:     
65:     function tillIn(
66:         address _accountAddress,
67:         address _tokenAddress,
68:         uint256 _amount,
69:         bool _isPointToken
70:     )
71:         external
72:         payable
73:         onlyRelatedContracts(tadleFactory, _msgSender()) // <= FOUND
74:         onlyInTokenWhiteList(_isPointToken, _tokenAddress)
75:     {
```
['[113](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L113-L126)']
```solidity
113:     
121:     function addTokenBalance(
122:         TokenBalanceType _tokenBalanceType,
123:         address _accountAddress,
124:         address _tokenAddress,
125:         uint256 _amount
126:     ) external onlyRelatedContracts(tadleFactory, _msgSender()) { // <= FOUND
```
['[141](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L141-L141)']
```solidity
141:         uint256 claimAbleAmount = userTokenBalanceMap[_msgSender()][ // <= FOUND
142:             _tokenAddress
143:         ][_tokenBalanceType];
```
['[175](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L175-L182)']
```solidity
175:             
176: 
179:             _safe_transfer_from(
180:                 _tokenAddress,
181:                 capitalPoolAddr,
182:                 _msgSender(), // <= FOUND
183:                 claimAbleAmount
184:             );
```
['[183](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L183-L184)']
```solidity
183:         emit Withdraw(
184:             _msgSender(), // <= FOUND
185:             _tokenAddress,
186:             _tokenBalanceType,
187:             claimAbleAmount
188:         );
```
['[34](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L34-L34)']
```solidity
34:         if (_msgSender() != guardian) { // <= FOUND
```
['[35](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L35-L35)']
```solidity
35:             revert CallerIsNotGuardian(guardian, _msgSender()); // <= FOUND
```


</details>

## [Gas-11] Consider using OZ EnumerateSet in place of nested mappings

### Resolution 
Nested mappings and multi-dimensional arrays in Solidity operate through a process of double hashing, wherein the original storage slot and the first key are concatenated and hashed, and then this hash is again concatenated with the second key and hashed. This process can be quite gas expensive due to the double-hashing operation and subsequent storage operation (sstore).

A possible optimization involves manually concatenating the keys followed by a single hash operation and an sstore. However, this technique introduces the risk of storage collision, especially when there are other nested hash maps in the contract that use the same key types. Because Solidity is unaware of the number and structure of nested hash maps in a contract, it follows a conservative approach in computing the storage slot to avoid possible collisions.

OpenZeppelin's EnumerableSet provides a potential solution to this problem. It creates a data structure that combines the benefits of set operations with the ability to enumerate stored elements, which is not natively available in Solidity. EnumerableSet handles the element uniqueness internally and can therefore provide a more gas-efficient and collision-resistant alternative to nested mappings or multi-dimensional arrays in certain scenarios. 

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[19](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/storage/TokenManagerStorage.sol#L19-L19)']
```solidity
19:     mapping(address => mapping(address => mapping(TokenBalanceType => uint256))) // <= FOUND
```


</details>

## [Gas-12] Use assembly to emit events

### Resolution 
With the use of inline assembly in Solidity, we can take advantage of low-level features like scratch space and the free memory pointer, offering more gas-efficient ways of emitting events. The scratch space is a certain area of memory where we can temporarily store data, and the free memory pointer indicates the next available memory slot. Using these, we can efficiently assemble event data without incurring additional memory expansion costs. However, safety is paramount: to avoid overwriting or leakage, we must cache the free memory pointer before use and restore it afterward, ensuring that it points to the correct memory location post-operation.

Num of instances: 26

### Findings 


<details><summary>Click to show findings</summary>

['[81](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L81-L81)']
```solidity
81:         emit CloseBidOffer( // <= FOUND
82:             makerInfo.marketPlace,
83:             offerInfo.maker,
84:             _offer,
85:             _msgSender()
86:         );
```
['[204](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L204-L204)']
```solidity
204:         emit CloseBidTaker( // <= FOUND
205:             makerInfo.marketPlace,
206:             offerInfo.maker,
207:             _stock,
208:             _msgSender(),
209:             userCollateralFee,
210:             pointTokenAmount
211:         );
```
['[316](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L316-L316)']
```solidity
316:         emit SettleAskMaker( // <= FOUND
317:             makerInfo.marketPlace,
318:             offerInfo.maker,
319:             _offer,
320:             _msgSender(),
321:             _settledPoints,
322:             settledPointTokenAmount,
323:             makerRefundAmount
324:         );
```
['[423](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L423-L423)']
```solidity
423:         emit SettleAskTaker( // <= FOUND
424:             makerInfo.marketPlace,
425:             offerInfo.maker,
426:             _stock,
427:             stockInfo.preOffer,
428:             _msgSender(),
429:             _settledPoints,
430:             settledPointTokenAmount,
431:             collateralFee
432:         );
```
['[148](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L148-L148)']
```solidity
148:         emit CreateOffer( // <= FOUND
149:             offerAddr,
150:             makerAddr,
151:             stockAddr,
152:             params.marketPlace,
153:             _msgSender(),
154:             params.points,
155:             params.amount
156:         );
```
['[275](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L275-L276)']
```solidity
275:         
276:         emit CreateTaker( // <= FOUND
277:             _offer,
278:             msg.sender,
279:             stockAddr,
280:             _points,
281:             depositAmount,
282:             tradeTax,
283:             remainingPlatformFee
284:         );
```
['[389](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L389-L389)']
```solidity
389:         emit ListOffer( // <= FOUND
390:             offerAddr,
391:             _stock,
392:             _msgSender(),
393:             stockInfo.points,
394:             _amount
395:         );
```
['[459](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L459-L459)']
```solidity
459:         emit CloseOffer(_offer, _msgSender()); // <= FOUND
```
['[525](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L525-L525)']
```solidity
525:         emit RelistOffer(_offer, _msgSender()); // <= FOUND
```
['[634](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L634-L634)']
```solidity
634:         emit AbortAskOffer(_offer, _msgSender()); // <= FOUND
```
['[696](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L696-L696)']
```solidity
696:         emit AbortBidTaker(_offer, _msgSender()); // <= FOUND
```
['[712](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L712-L712)']
```solidity
712:         emit OfferStatusUpdated(_offer, _status); // <= FOUND
```
['[728](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L728-L728)']
```solidity
728:         emit StockStatusUpdated(_stock, _status); // <= FOUND
```
['[748](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L748-L748)']
```solidity
748:         emit SettledAskOffer(_offer, _settledPoints, _settledPointTokenAmount); // <= FOUND
```
['[775](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L775-L775)']
```solidity
775:         emit SettledBidTaker( // <= FOUND
776:             _offer,
777:             _stock,
778:             _settledPoints,
779:             _settledPointTokenAmount
780:         );
```
['[894](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L894-L895)']
```solidity
894:             
895:             emit ReferralBonus( // <= FOUND
896:                 stockAddr,
897:                 _msgSender(),
898:                 referralInfo.referrer,
899:                 authorityReferralBonus,
900:                 referrerReferralBonus,
901:                 depositAmount,
902:                 platformFee
903:             );
```
['[74](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L74-L74)']
```solidity
74:         emit UpdateReferrerInfo( // <= FOUND
75:             msg.sender,
76:             _referrer,
77:             _referrerRate,
78:             _authorityRate
79:         );
```
['[108](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L108-L108)']
```solidity
108:         emit CreateMarketPlaceInfo(_marketPlaceName, marketPlace, _fixedratio); // <= FOUND
```
['[144](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L144-L144)']
```solidity
144:         emit UpdateMarket( // <= FOUND
145:             _marketPlaceName,
146:             marketPlace,
147:             _tokenAddress,
148:             _tokenPerPoint,
149:             _tge,
150:             _settlementPeriod
151:         );
```
['[189](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L189-L189)']
```solidity
189:         emit UpdateUserPlatformFeeRate(_accountAddress, _platformFeeRate); // <= FOUND
```
['[208](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L208-L208)']
```solidity
208:         emit UpdateReferralExtraRateMap(_referrer, _extraRate); // <= FOUND
```
['[102](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L102-L102)']
```solidity
102:         emit TillIn(_accountAddress, _tokenAddress, _amount, _isPointToken); // <= FOUND
```
['[123](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L123-L123)']
```solidity
123:         emit AddTokenBalance( // <= FOUND
124:             _accountAddress,
125:             _tokenAddress,
126:             _tokenBalanceType,
127:             _amount
128:         );
```
['[183](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L183-L183)']
```solidity
183:         emit Withdraw( // <= FOUND
184:             _msgSender(),
185:             _tokenAddress,
186:             _tokenBalanceType,
187:             claimAbleAmount
188:         );
```
['[222](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L222-L222)']
```solidity
222:         emit UpdateTokenWhiteListed(_token, _isWhiteListed); // <= FOUND
```
['[69](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L69-L69)']
```solidity
69:         emit RelatedContractDeployed(_relatedContractIndex, address(_proxy)); // <= FOUND
```


</details>

## [Gas-13] Use solady library where possible to save gas

### Resolution 
The following OpenZeppelin imports have a Solady equivalent, as such they can be used to save GAS as Solady modules have been specifically designed to be as GAS efficient as possible

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[4](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L4-L4)']
```solidity
4: import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol"; // <= FOUND
```


</details>

## [Gas-14] Mark Functions That Revert For Normal Users As payable

### Resolution 
In Solidity, marking functions as `payable` allows them to accept Ether. If a function is known to revert for regular users (non-admin or specific roles) but needs to be accessible to others, marking it as `payable` can be beneficial. This ensures that even if a regular user accidentally sends Ether to the function, the Ether won't be trapped, as the function reverts, returning the funds. This can save gas by avoiding unnecessary failure handling in the function itself. Resolution: Carefully assess the roles and access patterns, and mark functions that should revert for regular users as `payable` to handle accidental Ether transfers.

Num of instances: 10

### Findings 


<details><summary>Click to show findings</summary>

['[25](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L25-L25)']
```solidity
25:     function initialize(
26:         uint256 _basePlatformFeeRate,
27:         uint256 _baseReferralRate
28:     ) external onlyOwner {
29:         basePlatformFeeRate = _basePlatformFeeRate;
30:         baseReferralRate = _baseReferralRate;
31:     }
```
['[90](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L90-L90)']
```solidity
90:     function createMarketPlace(
91:         string calldata _marketPlaceName,
92:         bool _fixedratio
93:     ) external onlyOwner {
94:         address marketPlace = GenerateAddress.generateMarketPlaceAddress(
95:             _marketPlaceName
96:         );
97:         MarketPlaceInfo storage marketPlaceInfo = marketPlaceInfoMap[
98:             marketPlace
99:         ];
100: 
101:         if (marketPlaceInfo.status != MarketPlaceStatus.UnInitialized) {
102:             revert MarketPlaceAlreadyInitialized();
103:         }
104: 
105:         marketPlaceInfo.status = MarketPlaceStatus.Online;
106:         marketPlaceInfo.fixedratio = _fixedratio;
107: 
108:         emit CreateMarketPlaceInfo(_marketPlaceName, marketPlace, _fixedratio);
109:     }
```
['[120](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L120-L120)']
```solidity
120:     function updateMarket(
121:         string calldata _marketPlaceName,
122:         address _tokenAddress,
123:         uint256 _tokenPerPoint,
124:         uint256 _tge,
125:         uint256 _settlementPeriod
126:     ) external onlyOwner {
127:         address marketPlace = GenerateAddress.generateMarketPlaceAddress(
128:             _marketPlaceName
129:         );
130: 
131:         MarketPlaceInfo storage marketPlaceInfo = marketPlaceInfoMap[
132:             marketPlace
133:         ];
134: 
135:         if (marketPlaceInfo.status != MarketPlaceStatus.Online) {
136:             revert MarketPlaceNotOnline(marketPlaceInfo.status);
137:         }
138: 
139:         marketPlaceInfo.tokenAddress = _tokenAddress;
140:         marketPlaceInfo.tokenPerPoint = _tokenPerPoint;
141:         marketPlaceInfo.tge = _tge;
142:         marketPlaceInfo.settlementPeriod = _settlementPeriod;
143: 
144:         emit UpdateMarket(
145:             _marketPlaceName,
146:             marketPlace,
147:             _tokenAddress,
148:             _tokenPerPoint,
149:             _tge,
150:             _settlementPeriod
151:         );
152:     }
```
['[160](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L160-L160)']
```solidity
160:     function updateMarketPlaceStatus(
161:         string calldata _marketPlaceName,
162:         MarketPlaceStatus _status
163:     ) external onlyOwner {
164:         address marketPlace = GenerateAddress.generateMarketPlaceAddress(
165:             _marketPlaceName
166:         );
167:         MarketPlaceInfo storage marketPlaceInfo = marketPlaceInfoMap[
168:             marketPlace
169:         ];
170:         marketPlaceInfo.status = _status;
171:     }
```
['[179](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L179-L179)']
```solidity
179:     function updateUserPlatformFeeRate(
180:         address _accountAddress,
181:         uint256 _platformFeeRate
182:     ) external onlyOwner {
183:         require(
184:             _platformFeeRate <= Constants.PLATFORM_FEE_DECIMAL_SCALER,
185:             "Invalid platform fee rate"
186:         );
187:         userPlatformFeeRate[_accountAddress] = _platformFeeRate;
188: 
189:         emit UpdateUserPlatformFeeRate(_accountAddress, _platformFeeRate);
190:     }
```
['[199](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L199-L199)']
```solidity
199:     function updateReferralExtraRateMap(
200:         address _referrer,
201:         uint256 _extraRate
202:     ) external onlyOwner {
203:         uint256 totalRate = _extraRate + baseReferralRate;
204:         if (totalRate > Constants.REFERRAL_RATE_DECIMAL_SCALER) {
205:             revert InvalidTotalRate(totalRate);
206:         }
207:         referralExtraRateMap[_referrer] = _extraRate;
208:         emit UpdateReferralExtraRateMap(_referrer, _extraRate);
209:     }
```
['[43](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L43-L43)']
```solidity
43:     function initialize(address _wrappedNativeToken) external onlyOwner {
44:         wrappedNativeToken = _wrappedNativeToken;
45:     }
```
['[197](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L197-L197)']
```solidity
197:     function updateTokenWhiteListed(
198:         address[] calldata _tokens,
199:         bool _isWhiteListed
200:     ) external onlyOwner {
201:         uint256 _tokensLength = _tokens.length;
202: 
203:         for (uint256 i = 0; i < _tokensLength; ) {
204:             _updateTokenWhiteListed(_tokens[i], _isWhiteListed);
205:             unchecked {
206:                 ++i;
207:             }
208:         }
209:     }
```
['[222](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L222-L222)']
```solidity
222:     function settleAskMaker(address _offer, uint256 _settledPoints) external {
223:         (
224:             OfferInfo memory offerInfo,
225:             MakerInfo memory makerInfo,
226:             MarketPlaceInfo memory marketPlaceInfo,
227:             MarketPlaceStatus status
228:         ) = getOfferInfo(_offer);
229: 
230:         if (_settledPoints > offerInfo.usedPoints) {
231:             revert InvalidPoints();
232:         }
233: 
234:         if (marketPlaceInfo.fixedratio) {
235:             revert FixedRatioUnsupported();
236:         }
237: 
238:         if (offerInfo.offerType == OfferType.Bid) {
239:             revert InvalidOfferType(OfferType.Ask, OfferType.Bid);
240:         }
241: 
242:         if (
243:             offerInfo.offerStatus != OfferStatus.Virgin &&
244:             offerInfo.offerStatus != OfferStatus.Canceled
245:         ) {
246:             revert InvalidOfferStatus();
247:         }
248: 
249:         if (status == MarketPlaceStatus.AskSettling) {
250:             if (_msgSender() != offerInfo.authority) {
251:                 revert Errors.Unauthorized();
252:             }
253:         } else {
254:             if (_msgSender() != owner()) {
255:                 revert Errors.Unauthorized();
256:             }
257:             if (_settledPoints > 0) {
258:                 revert InvalidPoints();
259:             }
260:         }
261: 
262:         uint256 settledPointTokenAmount = marketPlaceInfo.tokenPerPoint *
263:             _settledPoints;
264: 
265:         ITokenManager tokenManager = tadleFactory.getTokenManager();
266:         if (settledPointTokenAmount > 0) {
267:             tokenManager.tillIn(
268:                 _msgSender(),
269:                 marketPlaceInfo.tokenAddress,
270:                 settledPointTokenAmount,
271:                 true
272:             );
273:         }
274: 
275:         uint256 makerRefundAmount;
276:         if (_settledPoints == offerInfo.usedPoints) {
277:             if (offerInfo.offerStatus == OfferStatus.Virgin) {
278:                 makerRefundAmount = OfferLibraries.getDepositAmount(
279:                     offerInfo.offerType,
280:                     offerInfo.collateralRate,
281:                     offerInfo.amount,
282:                     true,
283:                     Math.Rounding.Floor
284:                 );
285:             } else {
286:                 uint256 usedAmount = offerInfo.amount.mulDiv(
287:                     offerInfo.usedPoints,
288:                     offerInfo.points,
289:                     Math.Rounding.Floor
290:                 );
291: 
292:                 makerRefundAmount = OfferLibraries.getDepositAmount(
293:                     offerInfo.offerType,
294:                     offerInfo.collateralRate,
295:                     usedAmount,
296:                     true,
297:                     Math.Rounding.Floor
298:                 );
299:             }
300: 
301:             tokenManager.addTokenBalance(
302:                 TokenBalanceType.SalesRevenue,
303:                 _msgSender(),
304:                 makerInfo.tokenAddress,
305:                 makerRefundAmount
306:             );
307:         }
308: 
309:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
310:         perMarkets.settledAskOffer(
311:             _offer,
312:             _settledPoints,
313:             settledPointTokenAmount
314:         );
315: 
316:         emit SettleAskMaker(
317:             makerInfo.marketPlace,
318:             offerInfo.maker,
319:             _offer,
320:             _msgSender(),
321:             _settledPoints,
322:             settledPointTokenAmount,
323:             makerRefundAmount
324:         );
325:     }
```
['[335](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/DeliveryPlace.sol#L335-L335)']
```solidity
335:     function settleAskTaker(address _stock, uint256 _settledPoints) external {
336:         IPerMarkets perMarkets = tadleFactory.getPerMarkets();
337:         StockInfo memory stockInfo = perMarkets.getStockInfo(_stock);
338: 
339:         (
340:             OfferInfo memory offerInfo,
341:             MakerInfo memory makerInfo,
342:             MarketPlaceInfo memory marketPlaceInfo,
343:             MarketPlaceStatus status
344:         ) = getOfferInfo(stockInfo.preOffer);
345: 
346:         if (stockInfo.stockStatus != StockStatus.Initialized) {
347:             revert InvalidStockStatus();
348:         }
349: 
350:         if (marketPlaceInfo.fixedratio) {
351:             revert FixedRatioUnsupported();
352:         }
353:         if (stockInfo.stockType == StockType.Bid) {
354:             revert InvalidStockType();
355:         }
356:         if (_settledPoints > stockInfo.points) {
357:             revert InvalidPoints();
358:         }
359: 
360:         if (status == MarketPlaceStatus.AskSettling) {
361:             if (_msgSender() != offerInfo.authority) {
362:                 revert Errors.Unauthorized();
363:             }
364:         } else {
365:             if (_msgSender() != owner()) {
366:                 revert Errors.Unauthorized();
367:             }
368:             if (_settledPoints > 0) {
369:                 revert InvalidPoints();
370:             }
371:         }
372: 
373:         uint256 settledPointTokenAmount = marketPlaceInfo.tokenPerPoint *
374:             _settledPoints;
375:         ITokenManager tokenManager = tadleFactory.getTokenManager();
376:         if (settledPointTokenAmount > 0) {
377:             tokenManager.tillIn(
378:                 _msgSender(),
379:                 marketPlaceInfo.tokenAddress,
380:                 settledPointTokenAmount,
381:                 true
382:             );
383: 
384:             tokenManager.addTokenBalance(
385:                 TokenBalanceType.PointToken,
386:                 offerInfo.authority,
387:                 makerInfo.tokenAddress,
388:                 settledPointTokenAmount
389:             );
390:         }
391: 
392:         uint256 collateralFee = OfferLibraries.getDepositAmount(
393:             offerInfo.offerType,
394:             offerInfo.collateralRate,
395:             stockInfo.amount,
396:             false,
397:             Math.Rounding.Floor
398:         );
399: 
400:         if (_settledPoints == stockInfo.points) {
401:             tokenManager.addTokenBalance(
402:                 TokenBalanceType.RemainingCash,
403:                 _msgSender(),
404:                 makerInfo.tokenAddress,
405:                 collateralFee
406:             );
407:         } else {
408:             tokenManager.addTokenBalance(
409:                 TokenBalanceType.MakerRefund,
410:                 offerInfo.authority,
411:                 makerInfo.tokenAddress,
412:                 collateralFee
413:             );
414:         }
415: 
416:         perMarkets.settleAskTaker(
417:             stockInfo.preOffer,
418:             _stock,
419:             _settledPoints,
420:             settledPointTokenAmount
421:         );
422: 
423:         emit SettleAskTaker(
424:             makerInfo.marketPlace,
425:             offerInfo.maker,
426:             _stock,
427:             stockInfo.preOffer,
428:             _msgSender(),
429:             _settledPoints,
430:             settledPointTokenAmount,
431:             collateralFee
432:         );
433:     }
```


</details>

## [Gas-15] Using nested if to save gas

### Resolution 
Using nested `if` statements instead of logical AND (`&&`) operators can potentially save gas in Solidity contracts. When a series of conditions are connected with `&&`, all conditions must be evaluated even if the first one fails. In contrast, nested `if` statements allow for short-circuiting; if the first condition fails, the rest are skipped, saving gas. This approach is more gas-efficient, especially when dealing with complex or gas-intensive conditions. However, it's crucial to balance gas savings with code readability and maintainability, ensuring that the code remains clear and easy to understand.

Num of instances: 6

### Findings 


<details><summary>Click to show findings</summary>

['[31](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L31-L31)']
```solidity
31:        if (!_isPointToken && !tokenWhiteListed[_tokenAddress]) { // <= FOUND
32:             revert TokenIsNotWhiteListed(_tokenAddress);
33:         }
```
['[35](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/OfferLibraries.sol#L35-L35)']
```solidity
35:         if (_offerType == OfferType.Bid && _isMaker) { // <= FOUND
36:             return _amount;
37:         }
```
['[40](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/OfferLibraries.sol#L40-L40)']
```solidity
40:         if (_offerType == OfferType.Ask && !_isMaker) { // <= FOUND
41:             return _amount;
42:         }
```
['[31](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L31-L31)']
```solidity
31:         if (!_isPointToken && !tokenWhiteListed[_tokenAddress]) { // <= FOUND
```
['[35](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/OfferLibraries.sol#L35-L36)']
```solidity
35:         
36:         if (_offerType == OfferType.Bid && _isMaker) { // <= FOUND
```
['[40](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/OfferLibraries.sol#L40-L41)']
```solidity
40:         
41:         if (_offerType == OfferType.Ask && !_isMaker) { // <= FOUND
```


</details>

## [Gas-16] Low level call can be optimized with assembly

### Resolution 
Optimizing low-level calls using assembly in Solidity can be beneficial, particularly when dealing with function return data. Typically, even if return data from a low-level call is not used, Solidity still allocates memory to store it, which incurs gas costs. By using assembly, developers can bypass the automatic memory allocation for unused return data. This manual optimization involves handling the call at the assembly level and deliberately choosing not to store the return data in memory when it's not needed.

Num of instances: 3

### Findings 


<details><summary>Click to show findings</summary>

['[28](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L28-L28)']
```solidity
28:         (bool success, ) = tokenAddr.call( // <= FOUND
29:             abi.encodeWithSelector(
30:                 APPROVE_SELECTOR,
31:                 tokenManager,
32:                 type(uint256).max
33:             )
34:         );
```
['[28](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L28-L28)']
```solidity
28:         (bool success, ) = tokenAddr.call( // <= FOUND
29:             abi.encodeWithSelector(
30:                 APPROVE_SELECTOR,
31:                 tokenManager,
32:                 type(uint256).max
33:             )
34:         );
```
['[28](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L28-L28)']
```solidity
28:         (bool success, ) = tokenAddr.call( // <= FOUND
29:             abi.encodeWithSelector(
30:                 APPROVE_SELECTOR,
31:                 tokenManager,
32:                 type(uint256).max
33:             )
34:         );
```


</details>

## [Gas-17] Inline modifiers used only once

Num of instances: 2

### Findings 


<details><summary>Click to show findings</summary>

['[30](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L30-L30)']
```solidity
30:     modifier onlyInTokenWhiteList(bool _isPointToken, address _tokenAddress) { // <= FOUND
31:         if (!_isPointToken && !tokenWhiteListed[_tokenAddress]) {
32:             revert TokenIsNotWhiteListed(_tokenAddress);
33:         }
34: 
35:         _;
36:     }
```
['[33](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L33-L33)']
```solidity
33:     modifier onlyGuardian() { // <= FOUND
34:         if (_msgSender() != guardian) {
35:             revert CallerIsNotGuardian(guardian, _msgSender());
36:         }
37:         _;
38:     }
```


</details>

## [Gas-18] Solidity versions 0.8.19 and above are more gas efficient

### Resolution 
Solidity version 0.8.19 introduced a array of gas optimizations which make contracts which use it more efficient. Provided compatability it may be beneficial to upgrade to this version

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[2](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L2-L2)']
```solidity
2: pragma solidity ^0.8.13;
```


</details>

## [Gas-19] Internal functions only used once can be inlined to save gas

### Resolution 
If a internal function is only used once it doesn't make sense to modularise it unless the function which does call the function would be overly long and complex otherwise

Num of instances: 4

### Findings 


<details><summary>Click to show findings</summary>

['[813](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L813-L813)']
```solidity
813:     function _depositTokenWhenCreateTaker( // <= FOUND
814:         uint256 platformFee,
815:         uint256 depositAmount,
816:         uint256 tradeTax,
817:         MakerInfo storage makerInfo,
818:         OfferInfo storage offerInfo,
819:         ITokenManager tokenManager
820:     ) internal 
```
['[839](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L839-L839)']
```solidity
839:     function _updateReferralBonus( // <= FOUND
840:         uint256 platformFee,
841:         uint256 depositAmount,
842:         address stockAddr,
843:         MakerInfo storage makerInfo,
844:         ReferralInfo memory referralInfo,
845:         ITokenManager tokenManager
846:     ) internal returns (uint256 remainingPlatformFee) 
```
['[906](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L906-L906)']
```solidity
906:     function _updateTokenBalanceWhenCreateTaker( // <= FOUND
907:         address _offer,
908:         uint256 _tradeTax,
909:         uint256 _depositAmount,
910:         OfferInfo storage offerInfo,
911:         MakerInfo storage makerInfo,
912:         ITokenManager tokenManager
913:     ) internal 
```
['[216](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L216-L216)']
```solidity
216:     function _updateTokenWhiteListed( // <= FOUND
217:         address _token,
218:         bool _isWhiteListed
219:     ) internal 
```


</details>

## [Gas-20] Constructors can be marked as payable to save deployment gas

Num of instances: 3

### Findings 


<details><summary>Click to show findings</summary>

['[17](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L17-L17)']
```solidity
17:     constructor() Rescuable() {}
```
['[17](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L17-L17)']
```solidity
17:     constructor() Rescuable() {}
```
['[40](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L40-L40)']
```solidity
40:     constructor(address _guardian) {
41:         guardian = _guardian;
42:     }
```


</details>

## [Gas-21] Assigning to structs can be more efficient

### Resolution 
Rather defining the struct in a single line, it is more efficient to declare an empty struct and then assign each struct element individually. This can net quite a large gas saving of 130 per instance.

Num of instances: 3

### Findings 


<details><summary>Click to show findings</summary>

['[39](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L39-L116)']
```solidity
39:     function createOffer(CreateOfferParams calldata params) external payable { // <= FOUND
40:         
41: 
45:         if (params.points == 0x0 || params.amount == 0x0) {
46:             revert Errors.AmountIsZero();
47:         }
48: 
49:         if (params.eachTradeTax > Constants.EACH_TRADE_TAX_DECIMAL_SCALER) {
50:             revert InvalidEachTradeTaxRate();
51:         }
52: 
53:         if (params.collateralRate < Constants.COLLATERAL_RATE_DECIMAL_SCALER) {
54:             revert InvalidCollateralRate();
55:         }
56: 
57:         
58:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
59:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
60:             .getMarketPlaceInfo(params.marketPlace);
61:         marketPlaceInfo.checkMarketPlaceStatus(
62:             block.timestamp,
63:             MarketPlaceStatus.Online
64:         );
65: 
66:         
67:         address makerAddr = GenerateAddress.generateMakerAddress(offerId);
68:         address offerAddr = GenerateAddress.generateOfferAddress(offerId);
69:         address stockAddr = GenerateAddress.generateStockAddress(offerId);
70: 
71:         if (makerInfoMap[makerAddr].authority != address(0x0)) {
72:             revert MakerAlreadyExist();
73:         }
74: 
75:         if (offerInfoMap[offerAddr].authority != address(0x0)) {
76:             revert OfferAlreadyExist();
77:         }
78: 
79:         if (stockInfoMap[stockAddr].authority != address(0x0)) {
80:             revert StockAlreadyExist();
81:         }
82: 
83:         offerId = offerId + 1;
84: 
85:         {
86:             
87:             uint256 transferAmount = OfferLibraries.getDepositAmount(
88:                 params.offerType,
89:                 params.collateralRate,
90:                 params.amount,
91:                 true,
92:                 Math.Rounding.Ceil
93:             );
94: 
95:             ITokenManager tokenManager = tadleFactory.getTokenManager();
96:             tokenManager.tillIn{value: msg.value}(
97:                 _msgSender(),
98:                 params.tokenAddress,
99:                 transferAmount,
100:                 false
101:             );
102:         }
103: 
104:         
105:         makerInfoMap[makerAddr] = MakerInfo({ // <= FOUND
106:             offerSettleType: params.offerSettleType,
107:             authority: _msgSender(),
108:             marketPlace: params.marketPlace,
109:             tokenAddress: params.tokenAddress,
110:             originOffer: offerAddr,
111:             platformFee: 0,
112:             eachTradeTax: params.eachTradeTax
113:         });
114: 
115:         
116:         offerInfoMap[offerAddr] = OfferInfo({ // <= FOUND
117:             id: offerId,
118:             authority: _msgSender(),
119:             maker: makerAddr,
120:             offerStatus: OfferStatus.Virgin,
121:             offerType: params.offerType,
122:             points: params.points,
123:             amount: params.amount,
124:             collateralRate: params.collateralRate,
125:             abortOfferStatus: AbortOfferStatus.Initialized,
126:             usedPoints: 0,
127:             tradeTax: 0,
128:             settledPoints: 0,
129:             settledPointTokenAmount: 0,
130:             settledCollateralAmount: 0
131:         });
132: 
133:         
134:         stockInfoMap[stockAddr] = StockInfo({ // <= FOUND
135:             id: offerId,
136:             stockStatus: StockStatus.Initialized,
137:             stockType: params.offerType == OfferType.Ask
138:                 ? StockType.Bid
139:                 : StockType.Ask,
140:             authority: _msgSender(),
141:             maker: makerAddr,
142:             preOffer: address(0x0),
143:             offer: offerAddr,
144:             points: params.points,
145:             amount: params.amount
146:         });
147: 
148:         emit CreateOffer(
149:             offerAddr,
150:             makerAddr,
151:             stockAddr,
152:             params.marketPlace,
153:             _msgSender(),
154:             params.points,
155:             params.amount
156:         );
157:     }
```
['[164](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L164-L239)']
```solidity
164:     function createTaker(address _offer, uint256 _points) external payable { // <= FOUND
165:         
166: 
170:         if (_points == 0x0) {
171:             revert Errors.AmountIsZero();
172:         }
173: 
174:         OfferInfo storage offerInfo = offerInfoMap[_offer];
175:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
176:         if (offerInfo.offerStatus != OfferStatus.Virgin) {
177:             revert InvalidOfferStatus();
178:         }
179: 
180:         if (offerInfo.points < _points + offerInfo.usedPoints) {
181:             revert NotEnoughPoints(
182:                 offerInfo.points,
183:                 offerInfo.usedPoints,
184:                 _points
185:             );
186:         }
187: 
188:         
189:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
190:         {
191:             MarketPlaceInfo memory marketPlaceInfo = systemConfig
192:                 .getMarketPlaceInfo(makerInfo.marketPlace);
193:             marketPlaceInfo.checkMarketPlaceStatus(
194:                 block.timestamp,
195:                 MarketPlaceStatus.Online
196:             );
197:         }
198: 
199:         ReferralInfo memory referralInfo = systemConfig.getReferralInfo(
200:             _msgSender()
201:         );
202: 
203:         uint256 platformFeeRate = systemConfig.getPlatformFeeRate(_msgSender());
204: 
205:         
206:         address stockAddr = GenerateAddress.generateStockAddress(offerId);
207:         if (stockInfoMap[stockAddr].authority != address(0x0)) {
208:             revert StockAlreadyExist();
209:         }
210: 
211:         
212:         uint256 depositAmount = _points.mulDiv(
213:             offerInfo.amount,
214:             offerInfo.points,
215:             Math.Rounding.Ceil
216:         );
217:         uint256 platformFee = depositAmount.mulDiv(
218:             platformFeeRate,
219:             Constants.PLATFORM_FEE_DECIMAL_SCALER
220:         );
221:         uint256 tradeTax = depositAmount.mulDiv(
222:             makerInfo.eachTradeTax,
223:             Constants.EACH_TRADE_TAX_DECIMAL_SCALER
224:         );
225: 
226:         ITokenManager tokenManager = tadleFactory.getTokenManager();
227:         _depositTokenWhenCreateTaker(
228:             platformFee,
229:             depositAmount,
230:             tradeTax,
231:             makerInfo,
232:             offerInfo,
233:             tokenManager
234:         );
235: 
236:         offerInfo.usedPoints = offerInfo.usedPoints + _points;
237: 
238:         
239:         stockInfoMap[stockAddr] = StockInfo({ // <= FOUND
240:             id: offerId,
241:             stockStatus: StockStatus.Initialized,
242:             stockType: offerInfo.offerType == OfferType.Ask
243:                 ? StockType.Bid
244:                 : StockType.Ask,
245:             authority: _msgSender(),
246:             maker: offerInfo.maker,
247:             preOffer: _offer,
248:             points: _points,
249:             amount: depositAmount,
250:             offer: address(0x0)
251:         });
252: 
253:         offerId = offerId + 1;
254:         uint256 remainingPlatformFee = _updateReferralBonus(
255:             platformFee,
256:             depositAmount,
257:             stockAddr,
258:             makerInfo,
259:             referralInfo,
260:             tokenManager
261:         );
262: 
263:         makerInfo.platformFee = makerInfo.platformFee + remainingPlatformFee;
264: 
265:         _updateTokenBalanceWhenCreateTaker(
266:             _offer,
267:             tradeTax,
268:             depositAmount,
269:             offerInfo,
270:             makerInfo,
271:             tokenManager
272:         );
273: 
274:         
275:         emit CreateTaker(
276:             _offer,
277:             msg.sender,
278:             stockAddr,
279:             _points,
280:             depositAmount,
281:             tradeTax,
282:             remainingPlatformFee
283:         );
284:     }
```
['[295](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L295-L370)']
```solidity
295:     function listOffer(
296:         address _stock,
297:         uint256 _amount,
298:         uint256 _collateralRate
299:     ) external payable {
300:         if (_amount == 0x0) {
301:             revert Errors.AmountIsZero();
302:         }
303: 
304:         if (_collateralRate < Constants.COLLATERAL_RATE_DECIMAL_SCALER) {
305:             revert InvalidCollateralRate();
306:         }
307: 
308:         StockInfo storage stockInfo = stockInfoMap[_stock];
309:         if (_msgSender() != stockInfo.authority) {
310:             revert Errors.Unauthorized();
311:         }
312: 
313:         OfferInfo storage offerInfo = offerInfoMap[stockInfo.preOffer];
314:         MakerInfo storage makerInfo = makerInfoMap[offerInfo.maker];
315: 
316:         
317:         ISystemConfig systemConfig = tadleFactory.getSystemConfig();
318:         MarketPlaceInfo memory marketPlaceInfo = systemConfig
319:             .getMarketPlaceInfo(makerInfo.marketPlace);
320: 
321:         marketPlaceInfo.checkMarketPlaceStatus(
322:             block.timestamp,
323:             MarketPlaceStatus.Online
324:         );
325: 
326:         if (stockInfo.offer != address(0x0)) {
327:             revert OfferAlreadyExist();
328:         }
329: 
330:         if (stockInfo.stockType != StockType.Bid) {
331:             revert InvalidStockType(StockType.Bid, stockInfo.stockType);
332:         }
333: 
334:         
335:         if (makerInfo.offerSettleType == OfferSettleType.Turbo) {
336:             address originOffer = makerInfo.originOffer;
337:             OfferInfo memory originOfferInfo = offerInfoMap[originOffer];
338: 
339:             if (_collateralRate != originOfferInfo.collateralRate) {
340:                 revert InvalidCollateralRate();
341:             }
342:             originOfferInfo.abortOfferStatus = AbortOfferStatus.SubOfferListed;
343:         }
344: 
345:         
346:         if (makerInfo.offerSettleType == OfferSettleType.Protected) {
347:             uint256 transferAmount = OfferLibraries.getDepositAmount(
348:                 offerInfo.offerType,
349:                 offerInfo.collateralRate,
350:                 _amount,
351:                 true,
352:                 Math.Rounding.Ceil
353:             );
354: 
355:             ITokenManager tokenManager = tadleFactory.getTokenManager();
356:             tokenManager.tillIn{value: msg.value}(
357:                 _msgSender(),
358:                 makerInfo.tokenAddress,
359:                 transferAmount,
360:                 false
361:             );
362:         }
363: 
364:         address offerAddr = GenerateAddress.generateOfferAddress(stockInfo.id);
365:         if (offerInfoMap[offerAddr].authority != address(0x0)) {
366:             revert OfferAlreadyExist();
367:         }
368: 
369:         
370:         offerInfoMap[offerAddr] = OfferInfo({ // <= FOUND
371:             id: stockInfo.id,
372:             authority: _msgSender(),
373:             maker: offerInfo.maker,
374:             offerStatus: OfferStatus.Virgin,
375:             offerType: offerInfo.offerType,
376:             abortOfferStatus: AbortOfferStatus.Initialized,
377:             points: stockInfo.points,
378:             amount: _amount,
379:             collateralRate: _collateralRate,
380:             usedPoints: 0,
381:             tradeTax: 0,
382:             settledPoints: 0,
383:             settledPointTokenAmount: 0,
384:             settledCollateralAmount: 0
385:         });
386: 
387:         stockInfo.offer = offerAddr;
388: 
389:         emit ListOffer(
390:             offerAddr,
391:             _stock,
392:             _msgSender(),
393:             stockInfo.points,
394:             _amount
395:         );
396:     }
```


</details>

## [Gas-22] Only emit event in setter function if the state variable was changed

### Resolution 
Emitting events in setter functions of smart contracts only when state variables change saves gas. This is because emitting events consumes gas, and unnecessary events, where no actual state change occurs, lead to wasteful consumption.

Num of instances: 5

### Findings 


<details><summary>Click to show findings</summary>

['[705](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L705-L712)']
```solidity
705:     function updateOfferStatus( // <= FOUND
706:         address _offer,
707:         OfferStatus _status
708:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) {
709:         OfferInfo storage offerInfo = offerInfoMap[_offer];
710:         offerInfo.offerStatus = _status;
711: 
712:         emit OfferStatusUpdated(_offer, _status); // <= FOUND
713:     }
```
['[721](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L721-L728)']
```solidity
721:     function updateStockStatus( // <= FOUND
722:         address _stock,
723:         StockStatus _status
724:     ) external onlyDeliveryPlace(tadleFactory, _msgSender()) {
725:         StockInfo storage stockInfo = stockInfoMap[_stock];
726:         stockInfo.stockStatus = _status;
727: 
728:         emit StockStatusUpdated(_stock, _status); // <= FOUND
729:     }
```
['[179](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L179-L189)']
```solidity
179:     function updateUserPlatformFeeRate( // <= FOUND
180:         address _accountAddress,
181:         uint256 _platformFeeRate
182:     ) external onlyOwner {
183:         require(
184:             _platformFeeRate <= Constants.PLATFORM_FEE_DECIMAL_SCALER,
185:             "Invalid platform fee rate"
186:         );
187:         userPlatformFeeRate[_accountAddress] = _platformFeeRate;
188: 
189:         emit UpdateUserPlatformFeeRate(_accountAddress, _platformFeeRate); // <= FOUND
190:     }
```
['[199](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L199-L208)']
```solidity
199:     function updateReferralExtraRateMap( // <= FOUND
200:         address _referrer,
201:         uint256 _extraRate
202:     ) external onlyOwner {
203:         uint256 totalRate = _extraRate + baseReferralRate;
204:         if (totalRate > Constants.REFERRAL_RATE_DECIMAL_SCALER) {
205:             revert InvalidTotalRate(totalRate);
206:         }
207:         referralExtraRateMap[_referrer] = _extraRate;
208:         emit UpdateReferralExtraRateMap(_referrer, _extraRate); // <= FOUND
209:     }
```
['[216](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L216-L222)']
```solidity
216:     function _updateTokenWhiteListed( // <= FOUND
217:         address _token,
218:         bool _isWhiteListed
219:     ) internal {
220:         tokenWhiteListed[_token] = _isWhiteListed;
221: 
222:         emit UpdateTokenWhiteListed(_token, _isWhiteListed); // <= FOUND
223:     }
```


</details>

## [Gas-23] Use OZ Array.unsafeAccess() to avoid repeated array length checks

### Resolution 
The OpenZeppelin Array.unsafeAccess() method is a optimization strategy for Solidity, aimed at reducing gas costs by bypassing automatic length checks on storage array accesses. In Solidity, every access to an array element involves a hidden gas cost due to a length check, ensuring that accesses do not exceed the array bounds. However, if a developer has already verified the array's bounds earlier in the function or knows through logic that the access is safe, directly accessing the array elements without redundant length checks can save gas. This approach requires careful consideration to avoid out-of-bounds errors, as it trades off safety checks for efficiency.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[204](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L204-L204)']
```solidity
204:             _updateTokenWhiteListed(_tokens[i], _isWhiteListed); // <= FOUND
```


</details>

## [Gas-24] Consider pre-calculating the address of address(this) to save gas

### Resolution 
Consider saving the address(this) value within a constant using foundry's script.sol or solady's LibRlp.sol to save gas

Num of instances: 4

### Findings 


<details><summary>Click to show findings</summary>

['[160](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L160-L169)']
```solidity
160:             
161: 
166:             _transfer(
167:                 wrappedNativeToken,
168:                 capitalPoolAddr,
169:                 address(this), // <= FOUND
170:                 claimAbleAmount,
171:                 capitalPoolAddr
172:             );
```
['[243](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L243-L245)']
```solidity
243:         if (
244:             _from == _capitalPoolAddr &&
245:             IERC20(_token).allowance(_from, address(this)) == 0x0 // <= FOUND
246:         ) {
```
['[247](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/TokenManager.sol#L247-L247)']
```solidity
247:             ICapitalPool(_capitalPoolAddr).approve(address(this)); // <= FOUND
```
['[62](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/factory/TadleFactory.sol#L62-L66)']
```solidity
62:         
63:         UpgradeableProxy _proxy = new UpgradeableProxy(
64:             _logic,
65:             guardian,
66:             address(this), // <= FOUND
67:             _data
68:         );
```


</details>

## [Gas-25] Use 'storage' instead of 'memory' for struct/array state variables

### Resolution 
In Solidity, choosing between `memory` and `storage` for variables, especially when dealing with structs or arrays, is crucial for optimizing gas costs. Variables declared as `storage` are pointers to the blockchain data, leading to lower gas consumption when fields are accessed or modified, as they don't require reading the entire structure. In contrast, `memory` variables copy the entire struct or array from `storage`, incurring significant gas costs, especially for large or complex structures. Therefore, use `storage` for state variables or when working within functions to manipulate existing contract data. Reserve `memory` for temporary data or when data needs to be passed to external functions as copies, ensuring efficient use of gas and avoiding unnecessary costs.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[337](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L337-L337)']
```solidity
337:             OfferInfo memory originOfferInfo = offerInfoMap[originOffer]; // <= FOUND
```


</details>

## [Gas-26] Use constants instead of type(uint<n>).max

### Resolution 
In smart contract development, utilizing constants for known maximum or minimum values, rather than computing `type(uint<n>).max` or assuming `0` for `.min`, can significantly reduce gas costs. Constants require less runtime computation and storage, optimizing contract efficiency—a crucial strategy for developers aiming for cost-effective and performant code.

Num of instances: 1

### Findings 


<details><summary>Click to show findings</summary>

['[32](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/CapitalPool.sol#L32-L32)']
```solidity
32:                 type(uint256).max // <= FOUND
```


</details>

## [Gas-27] Using named returns for pure and view functions is cheaper than using regular returns

Num of instances: 10

### Findings 


<details><summary>Click to show findings</summary>

['[787](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L787-L790)']
```solidity
787:     function getOfferInfo(
788:         address _offer
789:     ) external view returns (OfferInfo memory _offerInfo) {
790:         return offerInfoMap[_offer]; // <= FOUND
791:     }
```
['[797](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L797-L800)']
```solidity
797:     function getStockInfo(
798:         address _stock
799:     ) external view returns (StockInfo memory _stockInfo) {
800:         return stockInfoMap[_stock]; // <= FOUND
801:     }
```
['[807](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/PreMarkets.sol#L807-L810)']
```solidity
807:     function getMakerInfo(
808:         address _maker
809:     ) external view returns (MakerInfo memory _makerInfo) {
810:         return makerInfoMap[_maker]; // <= FOUND
811:     }
```
['[212](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L212-L213)']
```solidity
212:     function getBaseReferralRate() external view returns (uint256) {
213:         return baseReferralRate; // <= FOUND
214:     }
```
['[220](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L220-L225)']
```solidity
220:     function getPlatformFeeRate(address _user) external view returns (uint256) {
221:         if (userPlatformFeeRate[_user] == 0) {
222:             return basePlatformFeeRate; // <= FOUND
223:         }
224: 
225:         return userPlatformFeeRate[_user]; // <= FOUND
226:     }
```
['[229](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L229-L232)']
```solidity
229:     function getReferralInfo(
230:         address _referrer
231:     ) external view returns (ReferralInfo memory) {
232:         return referralInfoMap[_referrer]; // <= FOUND
233:     }
```
['[236](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/core/SystemConfig.sol#L236-L239)']
```solidity
236:     function getMarketPlaceInfo(
237:         address _marketPlace
238:     ) external view returns (MarketPlaceInfo memory) {
239:         return marketPlaceInfoMap[_marketPlace]; // <= FOUND
240:     }
```
['[20](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/MarketPlaceLibraries.sol#L20-L44)']
```solidity
20:     function getMarketPlaceStatus(
21:         uint256 _blockTimestamp,
22:         MarketPlaceInfo memory _marketPlaceInfo
23:     ) internal pure returns (MarketPlaceStatus _status) {
24:         if (_marketPlaceInfo.status == MarketPlaceStatus.Offline) {
25:             return MarketPlaceStatus.Offline; // <= FOUND
26:         }
27: 
28:         
29:         if (_marketPlaceInfo.tge == 0) {
30:             return _marketPlaceInfo.status; // <= FOUND
31:         }
32: 
33:         if (
34:             _blockTimestamp >
35:             _marketPlaceInfo.tge + _marketPlaceInfo.settlementPeriod
36:         ) {
37:             return MarketPlaceStatus.BidSettling; // <= FOUND
38:         }
39: 
40:         if (_blockTimestamp > _marketPlaceInfo.tge) {
41:             return MarketPlaceStatus.AskSettling; // <= FOUND
42:         }
43: 
44:         return _marketPlaceInfo.status; // <= FOUND
45:     }
```
['[27](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/OfferLibraries.sol#L27-L41)']
```solidity
27:     function getDepositAmount(
28:         OfferType _offerType,
29:         uint256 _collateralRate,
30:         uint256 _amount,
31:         bool _isMaker,
32:         Math.Rounding _rounding
33:     ) internal pure returns (uint256) {
34:         
35:         if (_offerType == OfferType.Bid && _isMaker) {
36:             return _amount; // <= FOUND
37:         }
38: 
39:         
40:         if (_offerType == OfferType.Ask && !_isMaker) {
41:             return _amount; // <= FOUND
42:         }
43: 
44:         return
45:             Math.mulDiv(
46:                 _amount,
47:                 _collateralRate,
48:                 Constants.COLLATERAL_RATE_DECIMAL_SCALER,
49:                 _rounding
50:             );
51:     }
```
['[63](https://github.com/Cyfrin/2024-08-tadle/tree/main/src/libraries/OfferLibraries.sol#L63-L78)']
```solidity
63:     function getRefundAmount(
64:         OfferType _offerType,
65:         uint256 _amount,
66:         uint256 _points,
67:         uint256 _usedPoints,
68:         uint256 _collateralRate
69:     ) internal pure returns (uint256) {
70:         uint256 usedAmount = Math.mulDiv(
71:             _amount,
72:             _usedPoints,
73:             _points,
74:             Math.Rounding.Ceil
75:         );
76: 
77:         if (_offerType == OfferType.Bid) {
78:             return _amount - usedAmount; // <= FOUND
79:         }
80: 
81:         return
82:             Math.mulDiv(
83:                 _amount - usedAmount,
84:                 _collateralRate,
85:                 Constants.COLLATERAL_RATE_DECIMAL_SCALER,
86:                 Math.Rounding.Floor
87:             );
88:     }
```


</details>
