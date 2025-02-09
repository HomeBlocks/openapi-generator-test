/*
 * OpenAPI Petstore
 *
 * This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
 *
 * API version: 1.0.0
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package main

import (
	"log"

	// WARNING!
	// Pass --git-repo-id and --git-user-id properties when generating the code
	//
	sw "github.com/HomeBlocks/openapi-generator-test/go"
)

func main() {
	routes := sw.ApiHandleFunctions{}

	log.Printf("Server started")

	router := sw.NewRouter(routes)

	log.Fatal(router.Run(":8080"))
}
