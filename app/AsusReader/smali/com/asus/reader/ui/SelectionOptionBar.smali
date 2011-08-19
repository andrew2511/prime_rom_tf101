.class public Lcom/asus/reader/ui/SelectionOptionBar;
.super Landroid/widget/LinearLayout;
.source "SelectionOptionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 33
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030033

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 34
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionOptionBar;->mListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionOptionBar;->mListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnAddHighlight()V

    goto :goto_0

    .line 132
    :pswitch_1
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionOptionBar;->mListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnRemoveHighlight()V

    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionOptionBar;->mListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnAddNote()V

    goto :goto_0

    .line 138
    :pswitch_3
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionOptionBar;->mListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnRemoveNote()V

    goto :goto_0

    .line 141
    :pswitch_4
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionOptionBar;->mListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnTTS()V

    goto :goto_0

    .line 144
    :pswitch_5
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionOptionBar;->mListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnCopy()V

    goto :goto_0

    .line 147
    :pswitch_6
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionOptionBar;->mListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnTranslation()V

    goto :goto_0

    .line 150
    :pswitch_7
    iget-object v0, p0, Lcom/asus/reader/ui/SelectionOptionBar;->mListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;->onClickOnShare()V

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x7f0b009c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
