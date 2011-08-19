.class public interface abstract Lcom/google/android/music/store/MusicContent$CommonColumns;
.super Ljava/lang/Object;
.source "MusicContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/store/MusicContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommonColumns"
.end annotation


# static fields
.field public static final EXISTS:Ljava/lang/String; = "hasAny"

.field public static final EXISTS_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hasAny"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/store/MusicContent$CommonColumns;->EXISTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method
