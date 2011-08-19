.class Lcom/layar/ActivityHelper$11;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ActivityHelper;->showDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$clickListner:Landroid/content/DialogInterface$OnClickListener;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ActivityHelper$11;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/layar/ActivityHelper$11;->val$clickListner:Landroid/content/DialogInterface$OnClickListener;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 306
    new-instance v1, Lcom/layar/ui/SmartDialog$Builder;

    iget-object v2, p0, Lcom/layar/ActivityHelper$11;->val$context:Landroid/content/Context;

    const v3, 0x7f09003a

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;IZ)V

    .line 307
    const v2, 0x7f09003b

    invoke-virtual {v1, v2}, Lcom/layar/ui/SmartDialog$Builder;->setTitle(I)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 308
    const v2, 0x7f090016

    iget-object v3, p0, Lcom/layar/ActivityHelper$11;->val$clickListner:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/layar/ui/SmartDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lcom/layar/ui/SmartDialog$Builder;->build()Lcom/layar/ui/SmartDialog;

    move-result-object v0

    .line 310
    .local v0, mCurrentDialog:Lcom/layar/ui/SmartDialog;
    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog;->show()V

    .line 311
    return-void
.end method
