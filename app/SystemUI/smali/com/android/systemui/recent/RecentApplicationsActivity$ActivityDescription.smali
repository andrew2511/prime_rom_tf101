.class Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
.super Ljava/lang/Object;
.source "RecentApplicationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentApplicationsActivity;
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

.field matrix:Landroid/graphics/Matrix;

.field position:I

.field thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "_thumbnail"
    .parameter "_icon"
    .parameter "_label"
    .parameter "_desc"
    .parameter "_id"
    .parameter "_pos"

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->thumbnail:Landroid/graphics/Bitmap;

    .line 150
    iput-object p2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->icon:Landroid/graphics/drawable/Drawable;

    .line 151
    iput-object p3, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->label:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->description:Ljava/lang/CharSequence;

    .line 153
    iput p5, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->id:I

    .line 154
    iput p6, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->position:I

    .line 155
    return-void
.end method
