.class public final enum Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;
.super Ljava/lang/Enum;
.source "DeleteConfirmationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/DeleteConfirmationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeletionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

.field public static final enum ALBUM:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

.field public static final enum ALBUM_BY_ARTIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

.field public static final enum ARTIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

.field public static final enum PLAYLIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

.field public static final enum SONG:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    const-string v1, "ARTIST"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->ARTIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    .line 33
    new-instance v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    const-string v1, "ALBUM"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->ALBUM:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    .line 34
    new-instance v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    const-string v1, "ALBUM_BY_ARTIST"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->ALBUM_BY_ARTIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    .line 35
    new-instance v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    const-string v1, "SONG"

    invoke-direct {v0, v1, v5}, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->SONG:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    .line 36
    new-instance v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    const-string v1, "PLAYLIST"

    invoke-direct {v0, v1, v6}, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->PLAYLIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    sget-object v1, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->ARTIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->ALBUM:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->ALBUM_BY_ARTIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->SONG:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->PLAYLIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->$VALUES:[Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    const-class v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->$VALUES:[Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    invoke-virtual {v0}, [Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    return-object v0
.end method
