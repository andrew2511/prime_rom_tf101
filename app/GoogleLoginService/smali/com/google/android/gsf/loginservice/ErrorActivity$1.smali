.class Lcom/google/android/gsf/loginservice/ErrorActivity$1;
.super Ljava/lang/Object;
.source "ErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/loginservice/ErrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/loginservice/ErrorActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/loginservice/ErrorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/ErrorActivity$1;->this$0:Lcom/google/android/gsf/loginservice/ErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/ErrorActivity$1;->this$0:Lcom/google/android/gsf/loginservice/ErrorActivity;

    invoke-virtual {v0}, Lcom/google/android/gsf/loginservice/ErrorActivity;->retry()V

    .line 56
    return-void
.end method
