.class Lcom/android/vending/FlagContentActivity$3;
.super Ljava/lang/Object;
.source "FlagContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/FlagContentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/FlagContentActivity;


# direct methods
.method constructor <init>(Lcom/android/vending/FlagContentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/vending/FlagContentActivity$3;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity$3;->this$0:Lcom/android/vending/FlagContentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/vending/FlagContentActivity;->setResult(I)V

    .line 109
    iget-object v0, p0, Lcom/android/vending/FlagContentActivity$3;->this$0:Lcom/android/vending/FlagContentActivity;

    invoke-virtual {v0}, Lcom/android/vending/FlagContentActivity;->finish()V

    .line 110
    return-void
.end method
