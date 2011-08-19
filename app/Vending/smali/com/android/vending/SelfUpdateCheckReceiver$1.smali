.class Lcom/android/vending/SelfUpdateCheckReceiver$1;
.super Ljava/lang/Object;
.source "SelfUpdateCheckReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/SelfUpdateCheckReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/SelfUpdateCheckReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/vending/SelfUpdateCheckReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/vending/SelfUpdateCheckReceiver$1;->this$0:Lcom/android/vending/SelfUpdateCheckReceiver;

    iput-object p2, p0, Lcom/android/vending/SelfUpdateCheckReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/vending/SelfUpdateCheckReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/vending/SelfUpdateCheckReceiver;->access$000(Landroid/content/Context;)V

    .line 25
    return-void
.end method
