.class Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawableCompat.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;


# direct methods
.method constructor <init>(Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    .line 722
    iput-object p1, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 725
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->invalidateSelf()V

    .line 726
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 730
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0, p2, p3, p4}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 731
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 735
    iget-object v0, p0, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat$1;->this$0:Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0, p2}, Landroid/support/graphics/drawable/AnimatedVectorDrawableCompat;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 736
    return-void
.end method
