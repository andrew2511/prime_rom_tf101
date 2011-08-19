.class Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;
.super Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CookieDataRequest"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;


# direct methods
.method private constructor <init>(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-direct {p0}, Lcom/google/mobile/googlenav/datarequest/BaseDataRequest;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;-><init>(Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;)V

    return-void
.end method


# virtual methods
.method public getRequestType()I
    .locals 1

    const/16 v0, 0xf

    return v0
.end method

.method public isImmediate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    iget-object v0, p0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher$CookieDataRequest;->this$0:Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;

    iget-wide v0, v0, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->cookie:J

    invoke-static {v0, v1}, Lcom/google/mobile/googlenav/datarequest/DataRequestDispatcher;->saveCookie(J)V

    const/4 v0, 0x1

    return v0
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
