.class Landroid/webkit/CookieManager$4;
.super Ljava/lang/Object;
.source "CookieManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CookieManager;->removeExpiredCookie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/CookieManager;


# direct methods
.method constructor <init>(Landroid/webkit/CookieManager;)V
    .registers 2
    .parameter

    .prologue
    .line 688
    iput-object p1, p0, Landroid/webkit/CookieManager$4;->this$0:Landroid/webkit/CookieManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 690
    iget-object v7, p0, Landroid/webkit/CookieManager$4;->this$0:Landroid/webkit/CookieManager;

    monitor-enter v7

    .line 691
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 692
    .local v5, now:J
    iget-object v8, p0, Landroid/webkit/CookieManager$4;->this$0:Landroid/webkit/CookieManager;

    #getter for: Landroid/webkit/CookieManager;->mCookieMap:Ljava/util/Map;
    invoke-static {v8}, Landroid/webkit/CookieManager;->access$300(Landroid/webkit/CookieManager;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 693
    .local v1, cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 694
    .local v4, listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    :cond_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_46

    .line 695
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 696
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 697
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 698
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/CookieManager$Cookie;

    .line 701
    .local v0, cookie:Landroid/webkit/CookieManager$Cookie;
    iget-wide v8, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_25

    iget-wide v8, v0, Landroid/webkit/CookieManager$Cookie;->expires:J

    cmp-long v8, v8, v5

    if-gez v8, :cond_25

    .line 702
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_25

    .line 707
    .end local v0           #cookie:Landroid/webkit/CookieManager$Cookie;
    .end local v1           #cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;"
    .end local v4           #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .end local v5           #now:J
    :catchall_43
    move-exception v8

    monitor-exit v7
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v8

    .line 706
    .restart local v1       #cookieList:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .restart local v4       #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/ArrayList<Landroid/webkit/CookieManager$Cookie;>;>;"
    .restart local v5       #now:J
    :cond_46
    :try_start_46
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Landroid/webkit/CookieSyncManager;->clearExpiredCookies(J)V

    .line 707
    monitor-exit v7
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_43

    .line 708
    return-void
.end method
