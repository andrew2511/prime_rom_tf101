.class public final enum Lcom/android/launcher2/CustomizePagedView$CustomizationType;
.super Ljava/lang/Enum;
.source "CustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CustomizePagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CustomizationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/CustomizePagedView$CustomizationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/CustomizePagedView$CustomizationType;

.field public static final enum ApplicationCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

.field public static final enum ShortcutCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

.field public static final enum WallpaperCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

.field public static final enum WidgetCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    const-string v1, "WidgetCustomization"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CustomizePagedView$CustomizationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->WidgetCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    .line 78
    new-instance v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    const-string v1, "ShortcutCustomization"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/CustomizePagedView$CustomizationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->ShortcutCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    .line 79
    new-instance v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    const-string v1, "WallpaperCustomization"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher2/CustomizePagedView$CustomizationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->WallpaperCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    .line 80
    new-instance v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    const-string v1, "ApplicationCustomization"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher2/CustomizePagedView$CustomizationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->ApplicationCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    sget-object v1, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->WidgetCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->ShortcutCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->WallpaperCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->ApplicationCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->$VALUES:[Lcom/android/launcher2/CustomizePagedView$CustomizationType;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/CustomizePagedView$CustomizationType;
    .locals 1
    .parameter

    .prologue
    .line 76
    const-class v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher2/CustomizePagedView$CustomizationType;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->$VALUES:[Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    invoke-virtual {v0}, [Lcom/android/launcher2/CustomizePagedView$CustomizationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    return-object v0
.end method
