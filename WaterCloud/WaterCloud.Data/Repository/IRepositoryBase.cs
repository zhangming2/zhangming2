﻿/*******************************************************************************
 * Copyright © 2020 WaterCloud.Framework 版权所有
 * Author: WaterCloud
 * Description: WaterCloud快速开发平台
 * Website：
*********************************************************************************/
using Chloe;
using WaterCloud.Code;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Linq.Expressions;

namespace WaterCloud.DataBase
{
    public interface IRepositoryBase : IDisposable
    {
        IRepositoryBase BeginTrans();
        void Commit();
        /// <summary>
        /// 插入
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="entity"></param>
        void Insert<TEntity>(TEntity entity) where TEntity : class;
        /// <summary>
        /// 批量插入
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="entitys"></param>
        void Insert<TEntity>(List<TEntity> entitys) where TEntity : class;
        /// <summary>
        /// 更新
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="entity"></param>
        /// <returns></returns>
        int Update<TEntity>(TEntity entity) where TEntity : class;
        /// <summary>
        /// 批量更新
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="predicate"></param>
        /// <param name="content"></param>
        /// <returns></returns>
        int Update<TEntity>(Expression<Func<TEntity, bool>> predicate, Expression<Func<TEntity, TEntity>> content) where TEntity : class;
        /// <summary>
        /// 删除
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="entity"></param>
        /// <returns></returns>
        int Delete<TEntity>(TEntity entity) where TEntity : class;
        /// <summary>
        /// 批量删除
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="predicate"></param>
        /// <returns></returns>
        int Delete<TEntity>(Expression<Func<TEntity, bool>> predicate) where TEntity : class;
        /// <summary>
        /// 查询单个对象根据主键
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="keyValue"></param>
        /// <returns></returns>
        TEntity FindEntity<TEntity>(object keyValue) where TEntity : class;
        /// <summary>
        /// 查询单个对象根据条件
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="predicate"></param>
        /// <returns></returns>
        TEntity FindEntity<TEntity>(Expression<Func<TEntity, bool>> predicate) where TEntity : class;
        /// <summary>
        /// 查询
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <returns></returns>
        IQuery<TEntity> IQueryable<TEntity>() where TEntity : class;
        /// <summary>
        /// 查询根据条件
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="predicate"></param>
        /// <returns></returns>
        IQuery<TEntity> IQueryable<TEntity>(Expression<Func<TEntity, bool>> predicate) where TEntity : class;
        /// <summary>
        /// SQL查询
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="strSql"></param>
        /// <returns></returns>
        List<TEntity> FindList<TEntity>(string strSql) where TEntity : class;
        /// <summary>
        /// sql查询
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="strSql"></param>
        /// <param name="dbParameter"></param>
        /// <returns></returns>
        List<TEntity> FindList<TEntity>(string strSql, DbParam[] dbParameter) where TEntity : class;
        /// <summary>
        /// 查询根据分页
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="pagination"></param>
        /// <returns></returns>
        List<TEntity> FindList<TEntity>(Pagination pagination) where TEntity : class, new();
        /// <summary>
        /// 查询根据条件和分页
        /// </summary>
        /// <typeparam name="TEntity"></typeparam>
        /// <param name="predicate"></param>
        /// <param name="pagination"></param>
        /// <returns></returns>
        List<TEntity> FindList<TEntity>(Expression<Func<TEntity, bool>> predicate, Pagination pagination) where TEntity : class, new();
        /// <summary>
        /// 对IQuery参数分页
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="query"></param>
        /// <param name="pagination"></param>
        /// <returns></returns>
        List<T> OrderList<T>(IQuery<T> query, Pagination pagination);
    }
}
