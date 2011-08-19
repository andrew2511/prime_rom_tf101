.class Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;
.super Ljava/lang/Object;
.source "RecentAppsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/RecentAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActivityDescription"
.end annotation


# instance fields
.field description:Ljava/lang/CharSequence;

.field icon:Landroid/graphics/drawable/Drawable;

.field id:I

.field intent:Landroid/content/Intent;

.field label:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field position:I

.field thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/content/Intent;IILjava/lang/String;)V
    .locals 0
    .parameter "_thumbnail"
    .parameter "_icon"
    .parameter "_label"
    .parameter "_desc"
    .parameter "_intent"
    .parameter "_id"
    .parameter "_pos"
    .parameter "_packageName"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;->thumbnail:Landroid/graphics/Bitmap;

    .line 97
    iput-object p2, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;->icon:Landroid/graphics/drawable/Drawable;

    .line 98
    iput-object p3, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;->label:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;->description:Ljava/lang/CharSequence;

    .line 100
    iput-object p5, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;->intent:Landroid/content/Intent;

    .line 101
    iput p6, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;->id:I

    .line 102
    iput p7, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;->position:I

    .line 103
    iput-object p8, p0, Lcom/android/systemui/statusbar/tablet/RecentAppsPanel$ActivityDescription;->packageName:Ljava/lang/String;

    .line 104
    return-void
.end method
