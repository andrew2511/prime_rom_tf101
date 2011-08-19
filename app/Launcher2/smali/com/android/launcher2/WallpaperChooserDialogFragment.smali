.class public Lcom/android/launcher2/WallpaperChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;,
        Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mEmbedded:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

.field private mThumbs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mImageView:Landroid/widget/ImageView;

    .line 59
    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/WallpaperChooserDialogFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/launcher2/WallpaperChooserDialogFragment;Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;)Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    return-object p1
.end method

.method private addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V
    .locals 9
    .parameter "resources"
    .parameter "packageName"
    .parameter "list"

    .prologue
    .line 212
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, extras:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 214
    .local v1, extra:Ljava/lang/String;
    const-string v7, "drawable"

    invoke-virtual {p1, v1, v7, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 215
    .local v5, res:I
    if-eqz v5, :cond_0

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_small"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {p1, v7, v8, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 219
    .local v6, thumbRes:I
    if-eqz v6, :cond_0

    .line 220
    iget-object v7, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v7, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v6           #thumbRes:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    .end local v1           #extra:Ljava/lang/String;
    .end local v5           #res:I
    :cond_1
    return-void
.end method

.method private findWallpapers()V
    .locals 5

    .prologue
    const v4, 0x7f070003

    const/16 v3, 0x18

    .line 197
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mThumbs:Ljava/util/ArrayList;

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    .line 200
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 205
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, packageName:Ljava/lang/String;
    invoke-direct {p0, v1, v0, v4}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 208
    const v2, 0x7f070002

    invoke-direct {p0, v1, v0, v2}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->addWallpapers(Landroid/content/res/Resources;Ljava/lang/String;I)V

    .line 209
    return-void
.end method

.method public static newInstance()Lcom/android/launcher2/WallpaperChooserDialogFragment;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;-><init>()V

    .line 67
    .local v0, fragment:Lcom/android/launcher2/WallpaperChooserDialogFragment;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->setCancelable(Z)V

    .line 68
    return-object v0
.end method

.method private selectWallpaper(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 166
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "wallpaper"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WallpaperManager;

    .line 168
    .local v2, wpm:Landroid/app/WallpaperManager;
    iget-object v3, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 170
    .local v0, activity:Landroid/app/Activity;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 171
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #wpm:Landroid/app/WallpaperManager;
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 173
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Launcher.WallpaperChooserDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set wallpaper: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    if-eqz p1, :cond_0

    const-string v0, "com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mEmbedded:Z

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->isInLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mEmbedded:Z

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    .line 114
    invoke-direct {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->findWallpapers()V

    .line 116
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03001f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 119
    .local v7, v:Landroid/view/View;
    const v3, 0x7f080037

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    .line 120
    .local v6, gridView:Landroid/widget/GridView;
    invoke-virtual {v6, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    new-instance v3, Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;-><init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/app/Activity;)V

    invoke-virtual {v6, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 126
    .local v2, viewInset:I
    const v3, 0x7f080039

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 127
    .local v1, wallPaperList:Landroid/widget/FrameLayout;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e004f

    invoke-virtual {v0, v3, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    const v3, 0x7f0e004d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move v3, v2

    move v4, v2

    move v5, v2

    .line 130
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 137
    invoke-direct {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->findWallpapers()V

    .line 143
    iget-boolean v3, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mEmbedded:Z

    if-eqz v3, :cond_0

    .line 144
    const v3, 0x7f03001f

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 146
    .local v2, view:Landroid/view/View;
    const v3, 0x7f080037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    .line 147
    .local v0, gallery:Landroid/widget/Gallery;
    invoke-virtual {v0, v4}, Landroid/widget/Gallery;->setCallbackDuringFling(Z)V

    .line 148
    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 149
    new-instance v3, Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;

    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;-><init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 151
    const v3, 0x7f080038

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, setButton:Landroid/view/View;
    new-instance v3, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$1;-><init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/widget/Gallery;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v3, 0x7f080036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mImageView:Landroid/widget/ImageView;

    move-object v3, v2

    .line 161
    .end local v0           #gallery:Landroid/widget/Gallery;
    .end local v1           #setButton:Landroid/view/View;
    .end local v2           #view:Landroid/view/View;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 90
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->cancel(Z)Z

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    .line 94
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 104
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 107
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 180
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->selectWallpaper(I)V

    .line 181
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 186
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->cancel()V

    .line 189
    :cond_0
    new-instance v0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    invoke-direct {v0, p0}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;-><init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mLoader:Lcom/android/launcher2/WallpaperChooserDialogFragment$WallpaperLoader;

    .line 190
    return-void
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
    .line 194
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 83
    const-string v0, "com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY"

    iget-boolean v1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment;->mEmbedded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    return-void
.end method
