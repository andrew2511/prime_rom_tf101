.class public Lcom/android/calendar/AsyncQueryService$Operation;
.super Ljava/lang/Object;
.source "AsyncQueryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AsyncQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation


# instance fields
.field public op:I

.field public scheduledExecutionTime:J

.field public token:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static opToChar(I)C
    .locals 1
    .parameter "op"

    .prologue
    .line 82
    packed-switch p0, :pswitch_data_0

    .line 94
    const/16 v0, 0x3f

    :goto_0
    return v0

    .line 84
    :pswitch_0
    const/16 v0, 0x51

    goto :goto_0

    .line 86
    :pswitch_1
    const/16 v0, 0x49

    goto :goto_0

    .line 88
    :pswitch_2
    const/16 v0, 0x55

    goto :goto_0

    .line 90
    :pswitch_3
    const/16 v0, 0x44

    goto :goto_0

    .line 92
    :pswitch_4
    const/16 v0, 0x42

    goto :goto_0

    .line 82
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


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Operation [op="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v1, p0, Lcom/android/calendar/AsyncQueryService$Operation;->op:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v1, p0, Lcom/android/calendar/AsyncQueryService$Operation;->token:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", scheduledExecutionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-wide v1, p0, Lcom/android/calendar/AsyncQueryService$Operation;->scheduledExecutionTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
