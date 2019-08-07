<?php

/**
 * Class ErrorCodes
 */
class ErrorCodes
{
    const MessageCodesResponse = [
        GlobalSystem::ExpMethodGet => [
            true => 'pass',
            false => 'keep'
        ],
        GlobalSystem::ExpMethodPut => [
            true => '',
            false => ''
        ],
        GlobalSystem::ExpMethodPost => [
            true => 'pass',
            false => 'keep'
        ],
        GlobalSystem::ExpMethodDelete => [
            true => '',
            false => ''
        ]
    ];

    const MetHodsCodesResponse = [
        GlobalSystem::ExpMethodGet => 200,
        GlobalSystem::ExpMethodPut => 204,
        GlobalSystem::ExpMethodPost => 201,
        GlobalSystem::ExpMethodDelete => 204
    ];

    const SystemError = [
        GlobalSystem::ExpErrorCode => 500,
        GlobalSystem::ExpErrorDesc => false
    ];

    const HttpMetHodExc = [
        GlobalSystem::ExpErrorCode => 405,
        GlobalSystem::ExpErrorDesc => 'Http method no implemented'
    ];

    const ActionExc = [
        GlobalSystem::ExpErrorCode => 400,
        GlobalSystem::ExpErrorDesc => 'Action selected no valid'
    ];

    const MetHodExc = [
        GlobalSystem::ExpErrorCode => 400,
        GlobalSystem::ExpErrorDesc => 'Method selected no valid or implemented'
    ];

    const HttpParamsExc = [
        GlobalSystem::ExpErrorCode => 400,
        GlobalSystem::ExpErrorDesc => 'Invalid input params'
    ];

    const AccessExc = [
        GlobalSystem::ExpErrorCode => 401,
        GlobalSystem::ExpErrorDesc => 'Invalid access attempt'
    ];
}