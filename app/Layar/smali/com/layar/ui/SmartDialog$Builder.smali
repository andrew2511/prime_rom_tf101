.class public Lcom/layar/ui/SmartDialog$Builder;
.super Ljava/lang/Object;
.source "SmartDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/SmartDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/SmartDialog$Builder$DialogParams;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "stringId"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;IZ)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "context"
    .parameter "stringId"
    .parameter "isProgress"

    .prologue
    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "message"
    .parameter "isProgress"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/layar/ui/SmartDialog$Builder$DialogParams;-><init>(Lcom/layar/ui/SmartDialog$Builder;Lcom/layar/ui/SmartDialog$Builder$DialogParams;)V

    iput-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    .line 93
    iput-object p1, p0, Lcom/layar/ui/SmartDialog$Builder;->mContext:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput-object p2, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->message:Ljava/lang/CharSequence;

    .line 95
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput-boolean p3, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->isProgress:Z

    .line 96
    return-void
.end method


# virtual methods
.method public build()Lcom/layar/ui/SmartDialog;
    .locals 4

    .prologue
    .line 166
    new-instance v0, Lcom/layar/ui/SmartDialog;

    iget-object v1, p0, Lcom/layar/ui/SmartDialog$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/ui/SmartDialog;-><init>(Landroid/content/Context;Lcom/layar/ui/SmartDialog$Builder$DialogParams;Lcom/layar/ui/SmartDialog;)V

    .line 167
    .local v0, dialog:Lcom/layar/ui/SmartDialog;
    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)Lcom/layar/ui/SmartDialog$Builder;
    .locals 1
    .parameter "adapter"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput-object p1, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->adapter:Landroid/widget/ListAdapter;

    .line 142
    return-object p0
.end method

.method public setButtonView(Landroid/view/ViewGroup;)Lcom/layar/ui/SmartDialog$Builder;
    .locals 1
    .parameter "view"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput-object p1, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->viewButtonPanel:Landroid/view/ViewGroup;

    .line 162
    return-object p0
.end method

.method public setCancelable(Z)Lcom/layar/ui/SmartDialog$Builder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput-boolean p1, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->cancelable:Z

    .line 137
    return-object p0
.end method

.method public setIcon(Ljava/lang/String;)Lcom/layar/ui/SmartDialog$Builder;
    .locals 1
    .parameter "iconUrl"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput-object p1, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->iconUrl:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public setListItemClick(Landroid/view/View$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput-object p1, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->listItemClickListener:Landroid/view/View$OnClickListener;

    .line 147
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;
    .locals 1
    .parameter "stringId"
    .parameter "listener"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput p1, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->negativeId:I

    .line 106
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput-object p2, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->negativeClick:Landroid/content/DialogInterface$OnClickListener;

    .line 107
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/layar/ui/SmartDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput-object p1, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->cancelClick:Landroid/content/DialogInterface$OnCancelListener;

    .line 112
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/layar/ui/SmartDialog$Builder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput-object p1, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->dismiss:Landroid/content/DialogInterface$OnDismissListener;

    .line 117
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;
    .locals 1
    .parameter "stringId"
    .parameter "listener"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput p1, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->positiveId:I

    .line 100
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput-object p2, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->positiveClick:Landroid/content/DialogInterface$OnClickListener;

    .line 101
    return-object p0
.end method

.method public setRotation(I)Lcom/layar/ui/SmartDialog$Builder;
    .locals 1
    .parameter "rotation"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput p1, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->rotation:I

    .line 152
    return-object p0
.end method

.method public setTheme(I)Lcom/layar/ui/SmartDialog$Builder;
    .locals 1
    .parameter "theme"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput p1, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->theme:I

    .line 157
    return-object p0
.end method

.method public setTitle(I)Lcom/layar/ui/SmartDialog$Builder;
    .locals 1
    .parameter "stringId"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput p1, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->titleId:I

    .line 122
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/layar/ui/SmartDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$Builder;->mParams:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iput-object p1, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->title:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public show()Lcom/layar/ui/SmartDialog;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/layar/ui/SmartDialog$Builder;->build()Lcom/layar/ui/SmartDialog;

    move-result-object v0

    .line 172
    .local v0, dialog:Lcom/layar/ui/SmartDialog;
    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog;->show()V

    .line 173
    return-object v0
.end method
