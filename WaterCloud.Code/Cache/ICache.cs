/*******************************************************************************
 * Copyright © 2016 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WaterCloud.Code
{
    public interface ICache
    {
        T GetCache<T>(string cacheKey) where T : class;
        void WriteCache<T>(T value, string cacheKey) where T : class;
        void WriteCache<T>(T value, string cacheKey, DateTime expireTime) where T : class;
        void RemoveCache(string cacheKey);
        void RemoveCache();
    }
}
