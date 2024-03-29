<?php
/**
 * Copyright (C) 2020 Tencent Cloud.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

namespace App\Api\Controller\SignInFieldsV3;

use App\Common\ResponseCode;
use App\Models\UserSignInFields;
use Discuz\Base\DzqAdminController;

class ResourceUserSignInController extends DzqAdminController
{
    protected $paramsAlias = ['uid' => 'userId'];

    public function main()
    {
        $userId = $this->inPut('uid');//推荐使用userId参数

        if (empty($userId)) {
            $this->outPut(ResponseCode::RESOURCE_NOT_FOUND, 'id不能为空');
        }

        $list = UserSignInFields::instance()->getUserRecordFields($userId);

        $data =$this->camelData($list);

        $this->outPut(ResponseCode::SUCCESS, '', $data);
    }

}
