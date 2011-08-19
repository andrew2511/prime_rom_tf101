.class public Lcom/google/android/gsf/gtalkservice/GTalkConnection$SpecialConnectionEvent;
.super Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;
.source "GTalkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/GTalkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpecialConnectionEvent"
.end annotation


# instance fields
.field private mEventType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 2583
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;-><init>()V

    .line 2584
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$SpecialConnectionEvent;->mEventType:I

    .line 2585
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 2589
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;->dump(Ljava/io/PrintWriter;)V

    .line 2591
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$SpecialConnectionEvent;->mEventType:I

    packed-switch v0, :pswitch_data_0

    .line 2612
    :goto_0
    return-void

    .line 2593
    :pswitch_0
    const-string v0, "HEARTBEAT TIMEOUT"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 2597
    :pswitch_1
    const-string v0, "IM LOGIN"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 2601
    :pswitch_2
    const-string v0, "IM LOGOUT"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 2605
    :pswitch_3
    const-string v0, "LOGIN"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 2609
    :pswitch_4
    const-string v0, "LOGOUT"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 2591
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
