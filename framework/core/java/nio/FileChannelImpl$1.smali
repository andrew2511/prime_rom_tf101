.class final Ljava/nio/FileChannelImpl$1;
.super Ljava/lang/Object;
.source "FileChannelImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/FileChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/nio/channels/FileLock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    check-cast p1, Ljava/nio/channels/FileLock;

    .end local p1
    check-cast p2, Ljava/nio/channels/FileLock;

    .end local p2
    invoke-virtual {p0, p1, p2}, Ljava/nio/FileChannelImpl$1;->compare(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/nio/channels/FileLock;Ljava/nio/channels/FileLock;)I
    .registers 8
    .parameter "lock1"
    .parameter "lock2"

    .prologue
    .line 49
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v0

    .line 50
    .local v0, position1:J
    invoke-virtual {p2}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v2

    .line 51
    .local v2, position2:J
    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    const/4 v4, 0x1

    :goto_d
    return v4

    :cond_e
    cmp-long v4, v0, v2

    if-gez v4, :cond_14

    const/4 v4, -0x1

    goto :goto_d

    :cond_14
    const/4 v4, 0x0

    goto :goto_d
.end method
