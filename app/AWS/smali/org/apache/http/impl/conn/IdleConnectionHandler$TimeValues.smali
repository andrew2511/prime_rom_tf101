.class Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;
.super Ljava/lang/Object;
.source "IdleConnectionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/conn/IdleConnectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeValues"
.end annotation


# instance fields
.field private final timeAdded:J

.field private final timeExpires:J


# direct methods
.method constructor <init>(JJLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .parameter "now"
    .parameter "validDuration"
    .parameter "validUnit"

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-wide p1, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeAdded:J

    .line 177
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 178
    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeExpires:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 166
    iget-wide v0, p0, Lorg/apache/http/impl/conn/IdleConnectionHandler$TimeValues;->timeAdded:J

    return-wide v0
.end method
