.class Lcom/ecareme/utils/ProcessHelper$OutputThread;
.super Ljava/lang/Thread;
.source "ProcessHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/utils/ProcessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutputThread"
.end annotation


# instance fields
.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "in"
    .parameter "out"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/ecareme/utils/ProcessHelper$OutputThread;->in:Ljava/io/InputStream;

    .line 48
    iput-object p2, p0, Lcom/ecareme/utils/ProcessHelper$OutputThread;->out:Ljava/io/OutputStream;

    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/ecareme/utils/ProcessHelper$OutputThread;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 56
    .local v1, i:I
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 67
    .end local v1           #i:I
    :goto_1
    return-void

    .line 58
    .restart local v1       #i:I
    :cond_0
    iget-object v2, p0, Lcom/ecareme/utils/ProcessHelper$OutputThread;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 59
    iget-object v2, p0, Lcom/ecareme/utils/ProcessHelper$OutputThread;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 62
    .end local v1           #i:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 64
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
