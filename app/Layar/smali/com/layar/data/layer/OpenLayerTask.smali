.class public Lcom/layar/data/layer/OpenLayerTask;
.super Landroid/os/AsyncTask;
.source "OpenLayerTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/layar/data/layer/LayerManager$LayerResponse;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;"
    }
.end annotation


# static fields
.field public static final ACTION_DETAILS:I = 0x3

.field public static final ACTION_LAUNCH:I = 0x1

.field public static final ACTION_LAUNCH_POI:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private forceOpening:Z

.field final mAction:I

.field final mContext:Landroid/content/Context;

.field final mDialog:Landroid/app/ProgressDialog;

.field final mExtras:Landroid/os/Bundle;

.field final mLayerManager:Lcom/layar/data/layer/LayerManager;

.field mPoiId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/layar/data/layer/OpenLayerTask;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/layer/OpenLayerTask;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "action"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/layar/data/layer/OpenLayerTask;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "action"
    .parameter "extras"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/data/layer/OpenLayerTask;->forceOpening:Z

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t use application context for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    const-class v2, Lcom/layar/data/layer/OpenLayerTask;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/layar/data/layer/OpenLayerTask;->mContext:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Lcom/layar/data/layer/OpenLayerTask;->mExtras:Landroid/os/Bundle;

    .line 70
    iput p2, p0, Lcom/layar/data/layer/OpenLayerTask;->mAction:I

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/layer/OpenLayerTask;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    .line 72
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/data/layer/OpenLayerTask;->mDialog:Landroid/app/ProgressDialog;

    .line 73
    iget-object v0, p0, Lcom/layar/data/layer/OpenLayerTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/layar/data/layer/OpenLayerTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 75
    iget-object v0, p0, Lcom/layar/data/layer/OpenLayerTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "context"
    .parameter "action"
    .parameter "forceOpen"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/layar/data/layer/OpenLayerTask;-><init>(Landroid/content/Context;ILandroid/os/Bundle;)V

    .line 61
    iput-boolean p3, p0, Lcom/layar/data/layer/OpenLayerTask;->forceOpening:Z

    .line 62
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayerResponse;
    .locals 3
    .parameter "args"

    .prologue
    const/4 v2, 0x1

    .line 80
    const/4 v0, 0x2

    iget v1, p0, Lcom/layar/data/layer/OpenLayerTask;->mAction:I

    if-ne v0, v1, :cond_0

    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 81
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/layar/data/layer/OpenLayerTask;->mPoiId:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/layar/data/layer/OpenLayerTask;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->getLayer(Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayerResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/layar/data/layer/OpenLayerTask;->doInBackground([Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayerResponse;

    move-result-object v0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/layar/data/layer/OpenLayerTask;->cancel(Z)Z

    .line 130
    return-void
.end method

.method protected onPostExecute(Lcom/layar/data/layer/LayerManager$LayerResponse;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 93
    iget-object v1, p0, Lcom/layar/data/layer/OpenLayerTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 94
    invoke-virtual {p1}, Lcom/layar/data/layer/LayerManager$LayerResponse;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    iget v1, p1, Lcom/layar/data/layer/LayerManager$LayerResponse;->responseCode:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 97
    iget-object v1, p0, Lcom/layar/data/layer/OpenLayerTask;->mContext:Landroid/content/Context;

    const v2, 0x7f090038

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 125
    :goto_0
    return-void

    .line 98
    :cond_0
    iget v1, p1, Lcom/layar/data/layer/LayerManager$LayerResponse;->responseCode:I

    const/16 v2, 0x38f

    if-ne v1, v2, :cond_1

    .line 99
    iget-object v1, p0, Lcom/layar/data/layer/OpenLayerTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/layar/ActivityHelper;->showDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/layar/data/layer/OpenLayerTask;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/layar/data/layer/LayerManager$LayerResponse;->responseCode:I

    invoke-static {v1, v2}, Lcom/layar/ActivityHelper;->downloadErrorHandling(Landroid/content/Context;I)Z

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p1, Lcom/layar/data/layer/LayerManager$LayerResponse;->layer:Lcom/layar/data/layer/Layer20;

    .line 107
    .local v0, layer:Lcom/layar/data/layer/Layer20;
    iget v1, p0, Lcom/layar/data/layer/OpenLayerTask;->mAction:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/layar/data/layer/OpenLayerTask;->mAction:I

    if-ne v1, v2, :cond_3

    .line 112
    iget-object v1, p0, Lcom/layar/data/layer/OpenLayerTask;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v1, v1, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-object v2, p0, Lcom/layar/data/layer/OpenLayerTask;->mPoiId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/layar/data/layer/LayerHandler;->setCurrentLayer(Lcom/layar/data/layer/Layer20;Ljava/lang/String;)V

    .line 117
    :goto_1
    iget-boolean v1, p0, Lcom/layar/data/layer/OpenLayerTask;->forceOpening:Z

    if-nez v1, :cond_5

    .line 118
    iget-object v1, p0, Lcom/layar/data/layer/OpenLayerTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/layar/data/layer/OpenLayerTask;->mExtras:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/layar/data/layer/OpenLayerTask;->mPoiId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/layar/data/layer/LayerHelper;->openCurrentLayer(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_3
    iget-object v1, p0, Lcom/layar/data/layer/OpenLayerTask;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v1, v1, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    const/4 v2, 0x3

    iget v3, p0, Lcom/layar/data/layer/OpenLayerTask;->mAction:I

    if-eq v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v1, v0, v2}, Lcom/layar/data/layer/LayerHandler;->setCurrentLayer(Lcom/layar/data/layer/Layer20;Z)V

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2

    .line 120
    :cond_5
    iget-object v1, p0, Lcom/layar/data/layer/OpenLayerTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/layar/data/layer/OpenLayerTask;->mExtras:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/layar/data/layer/OpenLayerTask;->mPoiId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/layar/data/layer/LayerHelper;->forceOpenLayer(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/layar/data/layer/Layer20;)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/layer/LayerManager$LayerResponse;

    invoke-virtual {p0, p1}, Lcom/layar/data/layer/OpenLayerTask;->onPostExecute(Lcom/layar/data/layer/LayerManager$LayerResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/layar/data/layer/OpenLayerTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 89
    return-void
.end method
