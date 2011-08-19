.class Lcom/google/android/voicesearch/HelpDialog$9;
.super Ljava/lang/Object;
.source "HelpDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 287
    iput-object p1, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1000(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1100(Lcom/google/android/voicesearch/HelpDialog;)I

    move-result v0

    if-lt p3, v0, :cond_6

    .line 291
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1000(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$1200(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1000(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$1300(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 299
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0, p3}, Lcom/google/android/voicesearch/HelpDialog;->access$1102(Lcom/google/android/voicesearch/HelpDialog;I)I

    .line 300
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1000(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1000(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1600(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 306
    if-nez p3, :cond_7

    .line 307
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1600(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 313
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1700(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 314
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p3, v0, :cond_8

    .line 315
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1700(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 321
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1800(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 322
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1800(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/Button;

    move-result-object v0

    if-nez p3, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 325
    :cond_4
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1900(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 326
    if-nez p3, :cond_a

    .line 328
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1900(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09071f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 336
    :cond_5
    :goto_4
    return-void

    .line 294
    :cond_6
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1000(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$1400(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1000(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextSwitcher;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v1}, Lcom/google/android/voicesearch/HelpDialog;->access$1500(Lcom/google/android/voicesearch/HelpDialog;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 309
    :cond_7
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1600(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 317
    :cond_8
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1700(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 322
    :cond_9
    const/16 v1, 0x8

    goto :goto_3

    .line 329
    :cond_a
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p3, v0, :cond_b

    .line 331
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1900(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 333
    :cond_b
    iget-object v0, p0, Lcom/google/android/voicesearch/HelpDialog$9;->this$0:Lcom/google/android/voicesearch/HelpDialog;

    invoke-static {v0}, Lcom/google/android/voicesearch/HelpDialog;->access$1900(Lcom/google/android/voicesearch/HelpDialog;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09071e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 340
    return-void
.end method
