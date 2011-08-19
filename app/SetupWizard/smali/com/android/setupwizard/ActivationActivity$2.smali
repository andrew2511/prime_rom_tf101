.class Lcom/android/setupwizard/ActivationActivity$2;
.super Ljava/lang/Object;
.source "ActivationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizard/ActivationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizard/ActivationActivity;


# direct methods
.method constructor <init>(Lcom/android/setupwizard/ActivationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/setupwizard/ActivationActivity$2;->this$0:Lcom/android/setupwizard/ActivationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity$2;->this$0:Lcom/android/setupwizard/ActivationActivity;

    invoke-static {v0}, Lcom/android/setupwizard/ActivationActivity;->access$300(Lcom/android/setupwizard/ActivationActivity;)V

    .line 170
    return-void
.end method
