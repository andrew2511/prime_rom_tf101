.class Lcom/layar/ui/SmartDialog$Builder$DialogParams;
.super Ljava/lang/Object;
.source "SmartDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/SmartDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogParams"
.end annotation


# instance fields
.field public adapter:Landroid/widget/ListAdapter;

.field public cancelClick:Landroid/content/DialogInterface$OnCancelListener;

.field public cancelable:Z

.field public dismiss:Landroid/content/DialogInterface$OnDismissListener;

.field public iconUrl:Ljava/lang/String;

.field public isProgress:Z

.field public listItemClickListener:Landroid/view/View$OnClickListener;

.field public message:Ljava/lang/CharSequence;

.field public negativeClick:Landroid/content/DialogInterface$OnClickListener;

.field public negativeId:I

.field public positiveClick:Landroid/content/DialogInterface$OnClickListener;

.field public positiveId:I

.field public rotation:I

.field public theme:I

.field final synthetic this$1:Lcom/layar/ui/SmartDialog$Builder;

.field public title:Ljava/lang/String;

.field public titleId:I

.field public viewButtonPanel:Landroid/view/ViewGroup;


# direct methods
.method private constructor <init>(Lcom/layar/ui/SmartDialog$Builder;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->this$1:Lcom/layar/ui/SmartDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->cancelable:Z

    .line 70
    const v0, 0x7f0b0011

    iput v0, p0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->theme:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->rotation:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/ui/SmartDialog$Builder;Lcom/layar/ui/SmartDialog$Builder$DialogParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/layar/ui/SmartDialog$Builder$DialogParams;-><init>(Lcom/layar/ui/SmartDialog$Builder;)V

    return-void
.end method
