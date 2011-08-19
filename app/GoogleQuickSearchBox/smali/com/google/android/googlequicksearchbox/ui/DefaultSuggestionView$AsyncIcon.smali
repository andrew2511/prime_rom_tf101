.class Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;
.super Ljava/lang/Object;
.source "DefaultSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncIcon"
.end annotation


# instance fields
.field private mCurrentId:Ljava/lang/String;

.field private final mFallbackToSourceIcon:Z

.field private final mReserveSpace:Z

.field private final mView:Landroid/widget/ImageView;

.field private mWantedId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;Landroid/widget/ImageView;ZZ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "fallbackToSourceIcon"
    .parameter "reserveSpace"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->this$0:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mView:Landroid/widget/ImageView;

    .line 186
    iput-boolean p3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mFallbackToSourceIcon:Z

    .line 187
    iput-boolean p4, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mReserveSpace:Z

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 177
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->handleNewDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V

    return-void
.end method

.method private clearDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 251
    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mCurrentId:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    return-void
.end method

.method private handleNewDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V
    .locals 2
    .parameter "icon"
    .parameter "id"
    .parameter "source"

    .prologue
    .line 235
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mFallbackToSourceIcon:Z

    if-eqz v0, :cond_1

    .line 236
    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/Source;->getSourceIconUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mCurrentId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-interface {p3}, Lcom/google/android/googlequicksearchbox/Source;->getSourceIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 242
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->setDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .parameter "icon"
    .parameter "id"

    .prologue
    .line 246
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mCurrentId:Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mReserveSpace:Z

    invoke-static {v0, p1, v1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->access$200(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Z)V

    .line 248
    return-void
.end method


# virtual methods
.method public set(I)V
    .locals 3
    .parameter "resId"

    .prologue
    const/4 v2, 0x0

    .line 191
    if-nez p1, :cond_0

    move-object v0, v2

    .line 192
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->handleNewDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V

    .line 194
    return-void

    .line 191
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->this$0:Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public set(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V
    .locals 5
    .parameter "source"
    .parameter "sourceIconId"

    .prologue
    const/4 v3, 0x0

    .line 197
    if-eqz p2, :cond_3

    .line 200
    invoke-interface {p1, p2}, Lcom/google/android/googlequicksearchbox/Source;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 201
    .local v1, iconUri:Landroid/net/Uri;
    if-nez v1, :cond_1

    move-object v2, v3

    .line 202
    .local v2, uniqueIconId:Ljava/lang/String;
    :goto_0
    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    .line 203
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mCurrentId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    invoke-interface {p1, p2}, Lcom/google/android/googlequicksearchbox/Source;->getIcon(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/util/NowOrLater;

    move-result-object v0

    .line 206
    .local v0, icon:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/NowOrLater;->haveNow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/NowOrLater;->getNow()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3, v2, p1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->handleNewDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V

    .line 232
    .end local v0           #icon:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    .end local v1           #iconUri:Landroid/net/Uri;
    .end local v2           #uniqueIconId:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 201
    .restart local v1       #iconUri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 212
    .restart local v0       #icon:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    .restart local v2       #uniqueIconId:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->clearDrawable()V

    .line 213
    new-instance v3, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V

    invoke-interface {v0, v3}, Lcom/google/android/googlequicksearchbox/util/NowOrLater;->getLater(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    goto :goto_1

    .line 229
    .end local v0           #icon:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    .end local v1           #iconUri:Landroid/net/Uri;
    .end local v2           #uniqueIconId:Ljava/lang/String;
    :cond_3
    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    .line 230
    invoke-direct {p0, v3, v3, p1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->handleNewDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Source;)V

    goto :goto_1
.end method
