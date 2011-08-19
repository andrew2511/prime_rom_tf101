.class public Lcom/google/android/youtube/app/ui/PromoHelper;
.super Ljava/lang/Object;
.source "PromoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/ui/PromoHelper$Position;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final displayHeight:I

.field private final preferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->context:Landroid/content/Context;

    .line 42
    const-string v2, "youtube"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->preferences:Landroid/content/SharedPreferences;

    .line 43
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 44
    .local v1, windowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 45
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->displayHeight:I

    .line 46
    return-void
.end method

.method private maybeShowPromo(Ljava/lang/String;IILcom/google/android/youtube/app/ui/PromoHelper$Position;)V
    .locals 10
    .parameter "prefKey"
    .parameter "stringId"
    .parameter "drawableId"
    .parameter "where"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 80
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, p1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 81
    .local v2, promoShowed:Z
    if-nez v2, :cond_0

    .line 82
    new-instance v4, Landroid/widget/Toast;

    iget-object v5, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 83
    .local v4, toast:Landroid/widget/Toast;
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040021

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, promo:Landroid/view/View;
    const v5, 0x7f08002a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 85
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    const v5, 0x7f08003f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 87
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    .line 88
    invoke-virtual {v4, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v4, v9}, Landroid/widget/Toast;->setDuration(I)V

    .line 91
    const/16 v5, 0x30

    iget v6, p4, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->percentage:I

    iget v7, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->displayHeight:I

    mul-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x64

    invoke-virtual {v4, v5, v8, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 92
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 93
    iget-object v5, p0, Lcom/google/android/youtube/app/ui/PromoHelper;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, p1, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    .end local v0           #imageView:Landroid/widget/ImageView;
    .end local v1           #promo:Landroid/view/View;
    .end local v3           #textView:Landroid/widget/TextView;
    .end local v4           #toast:Landroid/widget/Toast;
    :cond_0
    return-void
.end method


# virtual methods
.method public maybeShow3dPromo()V
    .locals 4

    .prologue
    .line 76
    const-string v0, "promo_3d"

    const v1, 0x7f0d00e1

    const v2, 0x7f020028

    sget-object v3, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->CENTER:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/youtube/app/ui/PromoHelper;->maybeShowPromo(Ljava/lang/String;IILcom/google/android/youtube/app/ui/PromoHelper$Position;)V

    .line 77
    return-void
.end method
