.class public Lcom/splashtop/remote/utils/ServerComparator;
.super Ljava/lang/Object;
.source "ServerComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 18
    move-object v0, p1

    check-cast v0, Lcom/splashtop/remote/bean/MacBean;

    move-object v5, v0

    .line 19
    .local v5, mb1:Lcom/splashtop/remote/bean/MacBean;
    move-object v0, p2

    check-cast v0, Lcom/splashtop/remote/bean/MacBean;

    move-object v6, v0

    .line 20
    .local v6, mb2:Lcom/splashtop/remote/bean/MacBean;
    invoke-virtual {v5}, Lcom/splashtop/remote/bean/MacBean;->getMacIP()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/splashtop/remote/net/NetworkHelper;->ipToInt(Ljava/lang/String;)J

    move-result-wide v1

    .line 21
    .local v1, ip1:J
    invoke-virtual {v6}, Lcom/splashtop/remote/bean/MacBean;->getMacIP()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/splashtop/remote/net/NetworkHelper;->ipToInt(Ljava/lang/String;)J

    move-result-wide v3

    .line 22
    .local v3, ip2:J
    cmp-long v7, v1, v3

    if-gez v7, :cond_0

    .line 23
    const/4 v7, -0x1

    .line 27
    :goto_0
    return v7

    .line 24
    :cond_0
    cmp-long v7, v1, v3

    if-lez v7, :cond_1

    .line 25
    const/4 v7, 0x1

    goto :goto_0

    .line 27
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method
