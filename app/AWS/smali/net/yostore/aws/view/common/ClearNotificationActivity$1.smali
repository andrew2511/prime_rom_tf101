.class Lnet/yostore/aws/view/common/ClearNotificationActivity$1;
.super Ljava/lang/Object;
.source "ClearNotificationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/ClearNotificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/common/ClearNotificationActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/common/ClearNotificationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/common/ClearNotificationActivity$1;->this$0:Lnet/yostore/aws/view/common/ClearNotificationActivity;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lnet/yostore/aws/view/common/ClearNotificationActivity$1;->this$0:Lnet/yostore/aws/view/common/ClearNotificationActivity;

    invoke-virtual {v0}, Lnet/yostore/aws/view/common/ClearNotificationActivity;->finish()V

    .line 46
    return-void
.end method
