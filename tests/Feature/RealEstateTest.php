<?php

namespace Tests\Feature;

use Tests\TestCase;
use App\Models\RealEstate;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Illuminate\Foundation\Testing\WithoutMiddleware;

class RealEstateTest extends TestCase
{
    use RefreshDatabase, WithoutMiddleware;

    /** @test */
    public function it_can_list_real_estates()
    {
        RealEstate::factory()->count(5)->create();

        $response = $this->getJson('/api/v1/real-estates');

        $response->assertStatus(200);
    }

    /** @test */
    public function it_can_create_real_estate()
    {
        $data = [
            "name"=>"Test House",
            "real_state_type"=>"house",
            "street"=>"Main",
            "external_number"=>"12",
            "neighborhood"=>"Area",
            "city"=>"Delhi",
            "country"=>"IN",
            "rooms"=>2,
            "bathrooms"=>1
        ];

        $response = $this->postJson('/api/v1/real-estates',$data);

        $response->assertStatus(201);
    }

    /** @test */
    public function it_can_show_real_estate()
    {
        $real = RealEstate::factory()->create();

        $response = $this->getJson('/api/v1/real-estates/'.$real->id);

        $response->assertStatus(200);
    }

    /** @test */
    public function it_can_update_real_estate()
    {
        $real = RealEstate::factory()->create();

        $response = $this->putJson('/api/v1/real-estates/'.$real->id,[
            "name"=>"Updated",
            "real_state_type"=>"house",
            "street"=>"Main",
            "external_number"=>"22",
            "neighborhood"=>"Area",
            "city"=>"Delhi",
            "country"=>"IN",
            "rooms"=>3,
            "bathrooms"=>2
        ]);

        $response->assertStatus(200);
    }

    /** @test */
    public function it_can_delete_real_estate()
    {
        $real = RealEstate::factory()->create();

        $response = $this->deleteJson('/api/v1/real-estates/'.$real->id);

        $response->assertStatus(200);
    }
}
