.class Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionStateEvent;
.super Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;
.source "GTalkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/GTalkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionStateEvent"
.end annotation


# instance fields
.field protected mState:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 2467
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;-><init>()V

    .line 2468
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionStateEvent;->mState:I

    .line 2469
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 2473
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;->dump(Ljava/io/PrintWriter;)V

    .line 2474
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionStateEvent;->mState:I

    invoke-static {v0}, Lcom/google/android/gtalkservice/ConnectionState;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2475
    return-void
.end method
