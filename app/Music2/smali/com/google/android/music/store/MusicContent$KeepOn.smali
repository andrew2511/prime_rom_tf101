.class public final Lcom/google/android/music/store/MusicContent$KeepOn;
.super Ljava/lang/Object;
.source "MusicContent.java"

# interfaces
.implements Lcom/google/android/music/store/Schema$KeepOn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MusicContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeepOn"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.google.music.keepon"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.google.music.keepon"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1040
    sget-object v0, Lcom/google/android/music/store/MusicContent;->KEEP_ON_URI:Landroid/net/Uri;

    sput-object v0, Lcom/google/android/music/store/MusicContent$KeepOn;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
