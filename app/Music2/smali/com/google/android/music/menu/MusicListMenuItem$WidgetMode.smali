.class public final enum Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;
.super Ljava/lang/Enum;
.source "MusicListMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/menu/MusicListMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WidgetMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

.field public static final enum WIDGET_CHECKBOX:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

.field public static final enum WIDGET_NONE:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

.field public static final enum WIDGET_RADIO_BUTTON:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    const-string v1, "WIDGET_NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_NONE:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    .line 17
    new-instance v0, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    const-string v1, "WIDGET_RADIO_BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_RADIO_BUTTON:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    .line 18
    new-instance v0, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    const-string v1, "WIDGET_CHECKBOX"

    invoke-direct {v0, v1, v4}, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_CHECKBOX:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    sget-object v1, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_NONE:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_RADIO_BUTTON:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_CHECKBOX:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->$VALUES:[Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    return-object p0
.end method

.method public static values()[Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->$VALUES:[Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    invoke-virtual {v0}, [Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    return-object v0
.end method
