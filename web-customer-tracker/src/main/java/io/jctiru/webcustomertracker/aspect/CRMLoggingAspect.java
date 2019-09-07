package io.jctiru.webcustomertracker.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import com.sun.istack.logging.Logger;

@Aspect
@Component
public class CRMLoggingAspect {

	// Setup logger
	private Logger logger = Logger.getLogger(getClass());

	// Setup pointcut declarations
	@Pointcut("execution(* io.jctiru.webcustomertracker.controller.*.*(..))")
	private void forControllerPackage() {
	}

	@Pointcut("execution(* io.jctiru.webcustomertracker.service.*.*(..))")
	private void forServicePackage() {
	}

	@Pointcut("execution(* io.jctiru.webcustomertracker.dao.*.*(..))")
	private void forDaoPackage() {
	}

	@Pointcut("forControllerPackage() || forServicePackage() || forDaoPackage()")
	private void forAppFlow() {
	}

	// Add @Before advice
	@Before("forAppFlow()")
	public void before(JoinPoint joinPoint) {
		String method = joinPoint.getSignature().toShortString();
		logger.info("===>> in @Before: calling method: " + method);
		Object[] args = joinPoint.getArgs();

		for (Object arg : args) {
			logger.info("===>> argument: " + arg);
		}
	}

	// Add @AfterReturning advice
	@AfterReturning(pointcut = "forAppFlow()", returning = "result")
	public void afterReturning(JoinPoint joinPoint, Object result) {
		String method = joinPoint.getSignature().toShortString();
		logger.info("===>> in @AfterReturning: calling method: " + method);
		logger.info("===>> result: " + result);
	}

}
