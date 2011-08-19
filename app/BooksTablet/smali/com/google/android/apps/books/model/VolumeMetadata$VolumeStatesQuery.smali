.class public interface abstract Lcom/google/android/apps/books/model/VolumeMetadata$VolumeStatesQuery;
.super Ljava/lang/Object;
.source "VolumeMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/model/VolumeMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VolumeStatesQuery"
.end annotation


# static fields
.field public static final LAST_ACCESS:I = 0x3

.field public static final LAST_MODE:I = 0x1

.field public static final PINNED:I = 0x2

.field public static final POSITION:I

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 823
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "position"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "last_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pinned"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "last_access"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/model/VolumeMetadata$VolumeStatesQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
