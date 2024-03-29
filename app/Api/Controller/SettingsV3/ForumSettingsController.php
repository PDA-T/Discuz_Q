<?php
/**
 * Copyright (C) 2021 Tencent Cloud.
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

namespace App\Api\Controller\SettingsV3;

use App\Common\ResponseCode;
use App\Events\SiteInfo\AdminSiteInfo;
use App\Settings\SettingsRepository;
use App\Repositories\UserRepository;
use Discuz\Base\DzqController;
use Illuminate\Contracts\Events\Dispatcher as Events;

class ForumSettingsController extends DzqController
{
    use ForumSettingTrait;

    protected function checkRequestPermissions(UserRepository $userRepo)
    {
        return true;
    }

    public function __construct(SettingsRepository $settings, Events $events)
    {
        $this->settings = $settings;
        $this->events = $events;
    }

    public function main()
    {
        $data = $this->forumSettingMain();
        $this->events->dispatch(new AdminSiteInfo($this->user));
        $this->outPut(ResponseCode::SUCCESS, '', $data);
    }
}
