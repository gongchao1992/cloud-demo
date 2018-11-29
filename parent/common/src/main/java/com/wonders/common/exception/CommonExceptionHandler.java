package com.wonders.common.exception;

import com.wonders.common.utils.Resp;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
public class CommonExceptionHandler {
    @ExceptionHandler(Exception.class)
    Resp exception(Exception e) {
        return Resp.error(e.getMessage());
    }
}
