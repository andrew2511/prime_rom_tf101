.class Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionClosedEvent;
.super Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;
.source "GTalkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/GTalkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionClosedEvent"
.end annotation


# instance fields
.field private mError:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 2562
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;-><init>()V

    .line 2563
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionClosedEvent;->mError:I

    .line 2564
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 2568
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;->dump(Ljava/io/PrintWriter;)V

    .line 2569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONN_CLOSED, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionClosedEvent;->mError:I

    invoke-static {v1}, Lcom/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2570
    return-void
.end method
