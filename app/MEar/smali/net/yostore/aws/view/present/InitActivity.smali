.class public Lnet/yostore/aws/view/present/InitActivity;
.super Landroid/app/Activity;
.source "InitActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InitActivity"

.field public static fi:Lnet/yostore/aws/handler/entity/FsInfo;


# instance fields
.field private btn_next:Landroid/widget/ImageButton;

.field private btn_play:Landroid/widget/ImageButton;

.field private btn_playlist:Landroid/widget/ImageButton;

.field private btn_pre:Landroid/widget/ImageButton;

.field private btn_repeat:Landroid/widget/ImageButton;

.field private btn_shuffle:Landroid/widget/ImageButton;

.field private ctx:Landroid/content/Context;

.field private currentIdx:I

.field private mFilter:Landroid/content/IntentFilter;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mTimepos:Landroid/widget/TextView;

.field private mdialog:Landroid/app/ProgressDialog;

.field private playingName:Landroid/widget/TextView;

.field private plist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    iput-object v0, p0, Lnet/yostore/aws/view/present/InitActivity;->btn_play:Landroid/widget/ImageButton;

    .line 83
    iput-object v0, p0, Lnet/yostore/aws/view/present/InitActivity;->btn_pre:Landroid/widget/ImageButton;

    .line 84
    iput-object v0, p0, Lnet/yostore/aws/view/present/InitActivity;->btn_next:Landroid/widget/ImageButton;

    .line 85
    iput-object v0, p0, Lnet/yostore/aws/view/present/InitActivity;->btn_shuffle:Landroid/widget/ImageButton;

    .line 86
    iput-object v0, p0, Lnet/yostore/aws/view/present/InitActivity;->btn_repeat:Landroid/widget/ImageButton;

    .line 87
    iput-object v0, p0, Lnet/yostore/aws/view/present/InitActivity;->btn_playlist:Landroid/widget/ImageButton;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/view/present/InitActivity;->currentIdx:I

    .line 79
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/present/InitActivity;->setContentView(I)V

    .line 107
    iput-object p0, p0, Lnet/yostore/aws/view/present/InitActivity;->ctx:Landroid/content/Context;

    .line 109
    return-void
.end method
