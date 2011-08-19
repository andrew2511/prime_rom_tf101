.class Lcom/google/android/voicesearch/HelpDialog$7;
.super Ljava/lang/Object;
.source "HelpDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/HelpDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/HelpDialog;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/HelpDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 238
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$500(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 240
    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$700(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/google/android/voicesearch/HelpDialog$7;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v3}, Lcom/google/android/voicesearch/HelpDialog;->access$600(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 241
    return-void
.end method
