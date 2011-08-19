.class public Lcom/layar/adapters/LayerActionsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LayerActionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/layar/data/PoiAction;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final EMAIL_ACTION:Ljava/lang/String; = "email"

.field public static final SCREENSHOT_ACTION:Ljava/lang/String; = "screenshot"

.field public static final SHARE_ACTION:Ljava/lang/String; = "share"

.field public static final STAR_ACTION:Ljava/lang/String; = "star"


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final owner:Landroid/app/Activity;

.field private shHandler:Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;)V
    .locals 1
    .parameter "owner"
    .parameter "screenshotHandler"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/layar/adapters/LayerActionsAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;)V
    .locals 2
    .parameter "owner"
    .parameter
    .parameter "screenshotHandler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/PoiAction;",
            ">;",
            "Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, actions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/PoiAction;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/adapters/LayerActionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    iput-object p1, p0, Lcom/layar/adapters/LayerActionsAdapter;->owner:Landroid/app/Activity;

    .line 49
    iput-object p3, p0, Lcom/layar/adapters/LayerActionsAdapter;->shHandler:Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;

    .line 50
    invoke-virtual {p0}, Lcom/layar/adapters/LayerActionsAdapter;->addHardcodeActions()V

    .line 51
    return-void

    .line 46
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public addHardcodeActions()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/layar/adapters/LayerActionsAdapter;->shHandler:Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/layar/adapters/LayerActionsAdapter;->getScreenShotAction()Lcom/layar/data/PoiAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/adapters/LayerActionsAdapter;->add(Ljava/lang/Object;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/layar/adapters/LayerActionsAdapter;->getEmailAction()Lcom/layar/data/PoiAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/adapters/LayerActionsAdapter;->add(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, Lcom/layar/adapters/LayerActionsAdapter;->getShareAction()Lcom/layar/data/PoiAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/adapters/LayerActionsAdapter;->add(Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lcom/layar/adapters/LayerActionsAdapter;->getStarAction()Lcom/layar/data/PoiAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/layar/adapters/LayerActionsAdapter;->add(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public getEmailAction()Lcom/layar/data/PoiAction;
    .locals 3

    .prologue
    .line 72
    new-instance v0, Lcom/layar/data/PoiAction;

    invoke-direct {v0}, Lcom/layar/data/PoiAction;-><init>()V

    .line 73
    .local v0, action:Lcom/layar/data/PoiAction;
    iget-object v1, p0, Lcom/layar/adapters/LayerActionsAdapter;->owner:Landroid/app/Activity;

    const v2, 0x7f090096

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/PoiAction;->label:Ljava/lang/String;

    .line 74
    const-string v1, "email"

    iput-object v1, v0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/layar/data/PoiAction;->layarAction:Z

    .line 76
    return-object v0
.end method

.method public getItem(I)Lcom/layar/data/PoiAction;
    .locals 1
    .parameter "position"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/layar/adapters/LayerActionsAdapter;->getCount()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 105
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/layar/data/PoiAction;

    move-object v0, p0

    .line 107
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/layar/adapters/LayerActionsAdapter;->getItem(I)Lcom/layar/data/PoiAction;

    move-result-object v0

    return-object v0
.end method

.method public getScreenShotAction()Lcom/layar/data/PoiAction;
    .locals 3

    .prologue
    .line 64
    new-instance v0, Lcom/layar/data/PoiAction;

    invoke-direct {v0}, Lcom/layar/data/PoiAction;-><init>()V

    .line 65
    .local v0, action:Lcom/layar/data/PoiAction;
    iget-object v1, p0, Lcom/layar/adapters/LayerActionsAdapter;->owner:Landroid/app/Activity;

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/PoiAction;->label:Ljava/lang/String;

    .line 66
    const-string v1, "screenshot"

    iput-object v1, v0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/layar/data/PoiAction;->layarAction:Z

    .line 68
    return-object v0
.end method

.method public getShareAction()Lcom/layar/data/PoiAction;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lcom/layar/data/PoiAction;

    invoke-direct {v0}, Lcom/layar/data/PoiAction;-><init>()V

    .line 84
    .local v0, action:Lcom/layar/data/PoiAction;
    iget-object v1, p0, Lcom/layar/adapters/LayerActionsAdapter;->owner:Landroid/app/Activity;

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/layar/data/PoiAction;->label:Ljava/lang/String;

    .line 85
    const-string v1, "share"

    iput-object v1, v0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/layar/data/PoiAction;->layarAction:Z

    .line 87
    return-object v0
.end method

.method public getStarAction()Lcom/layar/data/PoiAction;
    .locals 6

    .prologue
    .line 91
    new-instance v0, Lcom/layar/data/PoiAction;

    invoke-direct {v0}, Lcom/layar/data/PoiAction;-><init>()V

    .line 92
    .local v0, action:Lcom/layar/data/PoiAction;
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v3

    .line 93
    .local v3, manager:Lcom/layar/data/layer/LayerManager;
    iget-object v1, v3, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 94
    .local v1, handler:Lcom/layar/data/layer/LayerHandler;
    invoke-virtual {v1}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/layar/data/layer/LayerManager;->isBookmarked(Lcom/layar/data/layer/Layer20;)Z

    move-result v2

    .line 95
    .local v2, isFavorite:Z
    iget-object v4, p0, Lcom/layar/adapters/LayerActionsAdapter;->owner:Landroid/app/Activity;

    if-eqz v2, :cond_0

    const v5, 0x7f090052

    :goto_0
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/layar/data/PoiAction;->label:Ljava/lang/String;

    .line 97
    const-string v4, "star"

    iput-object v4, v0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    .line 98
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/layar/data/PoiAction;->layarAction:Z

    .line 99
    return-object v0

    .line 96
    :cond_0
    const v5, 0x7f090051

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 113
    if-eqz p2, :cond_0

    .line 114
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 121
    .local v2, view:Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/layar/adapters/LayerActionsAdapter;->getItem(I)Lcom/layar/data/PoiAction;

    move-result-object v1

    .line 122
    .local v1, action:Lcom/layar/data/PoiAction;
    iget-object v3, v1, Lcom/layar/data/PoiAction;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 124
    return-object p2

    .line 116
    .end local v1           #action:Lcom/layar/data/PoiAction;
    .end local v2           #view:Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/layar/adapters/LayerActionsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x1090011

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 117
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 118
    .restart local v2       #view:Landroid/widget/TextView;
    const v3, 0x1080062

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/PoiAction;

    .line 131
    .local v0, action:Lcom/layar/data/PoiAction;
    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Lcom/layar/App;->getLayerManager()Lcom/layar/data/layer/LayerManager;

    move-result-object v1

    iget-object v4, v1, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    .line 133
    .local v4, handler:Lcom/layar/data/layer/LayerHandler;
    iget-boolean v1, v0, Lcom/layar/data/PoiAction;->layarAction:Z

    if-eqz v1, :cond_4

    .line 134
    iget-object v1, v0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    const-string v2, "screenshot"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/layar/adapters/LayerActionsAdapter;->shHandler:Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;

    invoke-interface {v1}, Lcom/layar/adapters/LayerActionsAdapter$ScreenshotHandler;->createScreenshot()V

    .line 154
    .end local v0           #action:Lcom/layar/data/PoiAction;
    .end local v4           #handler:Lcom/layar/data/layer/LayerHandler;
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local v0       #action:Lcom/layar/data/PoiAction;
    .restart local v4       #handler:Lcom/layar/data/layer/LayerHandler;
    :cond_1
    iget-object v1, v0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    const-string v2, "email"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/layar/adapters/LayerActionsAdapter;->owner:Landroid/app/Activity;

    invoke-virtual {v4}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layar/data/layer/LayerHelper;->sendEmail(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v1, v0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    const-string v2, "share"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/layar/adapters/LayerActionsAdapter;->owner:Landroid/app/Activity;

    invoke-virtual {v4}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/layar/data/layer/LayerHelper;->share(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)Lcom/layar/ui/ResolverDialog;

    goto :goto_0

    .line 140
    :cond_3
    iget-object v1, v0, Lcom/layar/data/PoiAction;->contentType:Ljava/lang/String;

    const-string v2, "star"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/layar/adapters/LayerActionsAdapter;->owner:Landroid/app/Activity;

    invoke-static {v1}, Lcom/layar/data/layer/LayerHelper;->showAddFavoritesDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 143
    :cond_4
    iget-object v1, p0, Lcom/layar/adapters/LayerActionsAdapter;->owner:Landroid/app/Activity;

    instance-of v1, v1, Lcom/layar/data/AudioPlayer;

    if-eqz v1, :cond_5

    .line 144
    iget-object v1, p0, Lcom/layar/adapters/LayerActionsAdapter;->owner:Landroid/app/Activity;

    check-cast v1, Lcom/layar/data/AudioPlayer;

    move-object v5, v1

    .line 146
    .local v5, player:Lcom/layar/data/AudioPlayer;
    :goto_1
    iget-object v1, p0, Lcom/layar/adapters/LayerActionsAdapter;->owner:Landroid/app/Activity;

    instance-of v1, v1, Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    if-eqz v1, :cond_6

    .line 147
    iget-object v1, p0, Lcom/layar/adapters/LayerActionsAdapter;->owner:Landroid/app/Activity;

    check-cast v1, Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    move-object v6, v1

    .line 149
    .local v6, listener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;
    :goto_2
    invoke-virtual {v4}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v1

    .line 150
    iget-object v3, p0, Lcom/layar/adapters/LayerActionsAdapter;->owner:Landroid/app/Activity;

    .line 149
    invoke-static/range {v0 .. v6}, Lcom/layar/data/ActionHelper;->executeAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;Lcom/layar/data/BasePOI;Landroid/app/Activity;Lcom/layar/core/POIsContainer;Lcom/layar/data/AudioPlayer;Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V

    goto :goto_0

    .end local v5           #player:Lcom/layar/data/AudioPlayer;
    .end local v6           #listener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;
    :cond_5
    move-object v5, v2

    .line 145
    goto :goto_1

    .restart local v5       #player:Lcom/layar/data/AudioPlayer;
    :cond_6
    move-object v6, v2

    .line 148
    goto :goto_2
.end method
