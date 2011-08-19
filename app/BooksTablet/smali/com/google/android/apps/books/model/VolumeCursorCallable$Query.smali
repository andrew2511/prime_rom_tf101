.class public interface abstract Lcom/google/android/apps/books/model/VolumeCursorCallable$Query;
.super Ljava/lang/Object;
.source "VolumeCursorCallable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/model/VolumeCursorCallable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Query"
.end annotation


# static fields
.field public static final COVER_URL:I = 0x2

.field public static final CREATOR:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TITLE:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "creator"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cover_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/model/VolumeCursorCallable$Query;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
