.class public Lcom/asus/reader/book/ShareDialog$DisplayItem;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/ShareDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/asus/reader/book/ShareDialog$DisplayItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private info:Landroid/content/pm/ResolveInfo;

.field private intent:Landroid/content/Intent;

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/asus/reader/book/ShareDialog$DisplayItem$1;

    invoke-direct {v0}, Lcom/asus/reader/book/ShareDialog$DisplayItem$1;-><init>()V

    sput-object v0, Lcom/asus/reader/book/ShareDialog$DisplayItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter "info"
    .parameter "intent"
    .parameter "pm"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1, p3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/asus/reader/book/ShareDialog$DisplayItem;->text:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/asus/reader/book/ShareDialog$DisplayItem;->info:Landroid/content/pm/ResolveInfo;

    .line 90
    iput-object p2, p0, Lcom/asus/reader/book/ShareDialog$DisplayItem;->intent:Landroid/content/Intent;

    .line 91
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/asus/reader/book/ShareDialog$DisplayItem;->info:Landroid/content/pm/ResolveInfo;

    .line 117
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/asus/reader/book/ShareDialog$DisplayItem;->intent:Landroid/content/Intent;

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/asus/reader/book/ShareDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ShareDialog$DisplayItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/book/ShareDialog$DisplayItem;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/asus/reader/book/ShareDialog$DisplayItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/reader/book/ShareDialog$DisplayItem;)Landroid/content/pm/ResolveInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/asus/reader/book/ShareDialog$DisplayItem;->info:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "pm"

    .prologue
    const/16 v3, 0x30

    const/4 v2, 0x0

    .line 98
    iget-object v1, p0, Lcom/asus/reader/book/ShareDialog$DisplayItem;->info:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 99
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 100
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/asus/reader/book/ShareDialog$DisplayItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/asus/reader/book/ShareDialog$DisplayItem;->info:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    iget-object v0, p0, Lcom/asus/reader/book/ShareDialog$DisplayItem;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 112
    return-void
.end method
